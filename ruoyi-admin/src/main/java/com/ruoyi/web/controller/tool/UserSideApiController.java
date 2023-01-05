package com.ruoyi.web.controller.tool;

import com.alibaba.fastjson.JSONArray;
import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.json.SfJsonEntity;
import com.ruoyi.common.utils.*;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.domain.*;
import com.ruoyi.system.service.*;
import com.ruoyi.system.service.impl.ImailServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api("接收开发平台用户端接口")
@RestController
@RequestMapping("/userSide/api")
public class UserSideApiController extends BaseController {
    @Autowired
    private SysPasswordService passwordService;
    @Autowired
    private ISysUserService userService;
    @Autowired
    private IRhdProjectListService rhdProjectListService;
    @Autowired
    private ImailServiceImpl imailService;
    @Autowired
    private IRhdEmailCodeService iRhdEmailCodeService;
    @Autowired
    private IRhdDeviceCodeService deviceCodeService;
    @Autowired
    private IRhdCardsListService cardsListService;
    @Autowired
    private IRhdLackCardProjectService rhdLackCardProjectService;
    @Autowired
    private IRhdMessageDataService messageDataService;

    private final static String YHD = "用户端";
    private final static Long deptId = 446L;

    @ApiOperation("获取邮箱验证码")
    @GetMapping("/getEmailCode")
    public R<String> getEmailCode(String Email,String Type) {
        if(StringUtils.isNotNull(Email)){
            String contentCode = RandGen.codeGen();
            //给邮箱发送验证且保存到数据库
            String subject = "";
            String emailContent = "";
            if(Integer.parseInt(Type) ==  1){
                subject = "注册验证码";
                emailContent = "您的注册验证码为："+contentCode;
            }else if(Integer.parseInt(Type) == 2){
                subject ="找回密码验证码";
                emailContent = "您的找回密码验证码为："+contentCode;
            }
            imailService.sendHtmlMail(Email,subject,emailContent);
            //保存到数据库
            RhdEmailCode rhdEmailCode = new RhdEmailCode();
            rhdEmailCode.setEmailCode(contentCode);
            rhdEmailCode.setEmailAddress(Email);
            rhdEmailCode.setDelFlag("0");
            rhdEmailCode.setStatus("0");
            rhdEmailCode.setCreateBy(YHD);
            iRhdEmailCodeService.insertRhdEmailCode(rhdEmailCode);
        }else{
            return R.fail("邮箱地址必填");
        }
        return R.ok("Email Send Success");
    }

    @ApiOperation("用户端注册用户")
    @PostMapping("/registerUser")
    public R<String> registerUser(String userName,String email,String pwd,String code) {
        SysUser user = new SysUser();
        if(StringUtils.isNotNull(userName)){
            if (UserConstants.USER_NAME_NOT_UNIQUE.equals(userService.checkLoginNameUnique(userName))){
                return R.fail("该用户已存在，请修改用户名");
            }else{
                user.setLoginName(userName);
            }
        }else{
            return R.fail("登录名称必填");
        }
        if(StringUtils.isNotNull(userName)){
            user.setUserName(userName);
        }else{
            return R.fail("用户姓名必填");
        }
        if(StringUtils.isNotNull(pwd)){
            user.setSalt(ShiroUtils.randomSalt());
            user.setPassword(passwordService.encryptPassword(user.getLoginName(), pwd, user.getSalt()));
        }else{
            return R.fail("登录密码必填");
        }
        user.setCreateBy(YHD);
        user.setDeptId(deptId);
        user.setSex("0");
        Long[] roleId = {108L};
        user.setRoleIds(roleId);
        if(StringUtils.isNotNull(email) && StringUtils.isNotNull(code)){
            user.setEmail(email);
            RhdEmailCode result = iRhdEmailCodeService.checkRhdEmailCode(email,code);
            if(result != null ){
                userService.insertUser(user);
                result.setStatus("1");
                iRhdEmailCodeService.updateRhdEmailCode(result);
            }else {
                return R.fail("邮箱验证码校验失败");
            }
        }
        return R.ok("Please use this account and password to log in");
    }

    @ApiOperation("修改用户密码")
    @PostMapping("/updateUserPwd")
    public R<String> updateUserPwd(String email,String code,String pwd,String userName) {
        SysUser sysUser = null;
        if(StringUtils.isNotNull(userName)){
            sysUser = userService.selectUserByLoginName(userName);
        }
        if(StringUtils.isNotNull(email) && StringUtils.isNotNull(code)){
            RhdEmailCode result = iRhdEmailCodeService.checkRhdEmailCode(email,code);
            if(result != null ){
                if(StringUtils.isNotNull(pwd)){
                    sysUser.setSalt(ShiroUtils.randomSalt());
                    sysUser.setPassword(passwordService.encryptPassword(sysUser.getLoginName(), pwd, sysUser.getSalt()));
                    if (userService.resetUserPwd(sysUser) > 0) {
                        result.setStatus("1");
                        iRhdEmailCodeService.updateRhdEmailCode(result);
                        return R.ok("密码重置成功！Please use this account and password to log in");
                    }
                }else{
                    return R.fail("密码必填");
                }
            }else {
                return R.fail("邮箱验证码校验失败");
            }
        }
        return R.ok("Please use this account and password to log in");
    }

    @ApiOperation("用户登录")
    @GetMapping("/userLogin")
    public R<String> userLogin(String userName,String pwd) {
        if(StringUtils.isNotNull(userName) && StringUtils.isNotNull(pwd) ){
            UsernamePasswordToken token = new UsernamePasswordToken(userName, pwd, false);
            Subject subject = SecurityUtils.getSubject();
            try {
                subject.login(token);
                String accessToken = TokenTools.token(userName,pwd);
                return R.ok(accessToken);
            }
            catch (AuthenticationException e) {
                String msg = "用户或密码错误";
                if (StringUtils.isNotEmpty(e.getMessage())) {
                    msg = e.getMessage();
                }
                return R.fail(msg);
            }
        }else {
            return R.fail("登录用户名和密码必填");
        }


    }

    @ApiOperation("获取用户信息")
    @GetMapping("/getUserData")
    public R<SysUser> getUserData(String loginName,String accessToken) {
        boolean b = TokenTools.verify(accessToken);
        if(b){
            if(StringUtils.isNotNull(loginName)){
                SysUser user =  userService.selectUserByLoginName(loginName);
                if(user!=null){
                    return R.ok(user);
                }else{
                    return R.fail("查询不到该用户的信息");
                }
            }else {
                return R.fail("登录用户名必填");
            }
        }else{
            return R.fail("accessToken验证失败");
        }

    }

    @ApiOperation("获取平台所有项目")
    @PostMapping("/getProjectList")
    public R<List<RhdProjectList>> getProjectList(String projectName,String accessToken){
        boolean b = TokenTools.verify(accessToken);
        if(b){
            RhdProjectList rhdProjectList = new RhdProjectList();
            if(StringUtils.isNotNull(projectName)){
                rhdProjectList.setProjectName(projectName);
            }
            rhdProjectList.setStatus("0");
            List<RhdProjectList> proList = rhdProjectListService.selectRhdProjectListList(rhdProjectList);
            return R.ok(proList);
        }else{
            return R.fail("accessToken验证失败");
        }
    }

    @ApiOperation("提取手机号码")
    @PostMapping("/getPhoneNumber")
    public R<List<PhoneNumbers>> getPhoneNumber(String projectId,String extractCount,String accessToken){
        boolean b = TokenTools.verify(accessToken);
        if(b){
            if(StringUtils.isNotNull(projectId) && StringUtils.isNotNull(extractCount)){
                RhdCardsList cardsList = new RhdCardsList();
                cardsList.setProjectId(Long.valueOf(projectId));
                Map<String,Object> map = new HashMap();
                if(Integer.parseInt(extractCount) > 0 ){
                    if(Integer.parseInt(extractCount) >= 80 ){
                        map.put("size",80);
                    }else{
                        map.put("size",Integer.parseInt(extractCount));
                    }

                }else{
                    map.put("size",0);
                }
                cardsList.setParams(map);
                cardsList.setStatus("0");
                List<PhoneNumbers> phoneNumbers = cardsListService.selectPhoneNumberCount(cardsList);
                return R.ok(phoneNumbers);
            }else{
                return R.fail("项目ID或者提取数量必填");
            }
        }else{
            return R.fail("accessToken验证失败");
        }
    }

    @ApiOperation("获取缺卡项目")
    @PostMapping("/getLackProjectList")
    public R<List<RhdLackCardProject>> getLackProjectList(String accessToken){
        boolean b = TokenTools.verify(accessToken);
        if(b){
            RhdLackCardProject rhdLackCardProject = new RhdLackCardProject();
            rhdLackCardProject.setStatus("0");
            List<RhdLackCardProject> lackProList = rhdLackCardProjectService.selectRhdLackCardProjectList(rhdLackCardProject);
            return R.ok(lackProList);
        }else{
            return R.fail("accessToken验证失败");
        }
    }

    @ApiOperation("获取AccessToken信息")
    @GetMapping("/getAccessToken")
    public R<String> getAccessToken(String username,String pwd) {
        UsernamePasswordToken token = new UsernamePasswordToken(username, pwd, false);
        Subject subject = SecurityUtils.getSubject();
        String accessToken = "";
        try {
            subject.login(token);
            accessToken = TokenTools.token(username,pwd);
        }
        catch (AuthenticationException e) {
            String msg = "用户或密码错误";
            if (StringUtils.isNotEmpty(e.getMessage())) {
                msg = e.getMessage();
            }
            return R.fail(msg+" 获取accessToken失败");
        }
        return R.ok(accessToken);
    }

}

