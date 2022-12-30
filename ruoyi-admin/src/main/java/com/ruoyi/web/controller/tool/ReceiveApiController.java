package com.ruoyi.web.controller.tool;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.RandGen;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.domain.RhdCardsList;
import com.ruoyi.system.domain.RhdDeviceCode;
import com.ruoyi.system.domain.RhdEmailCode;
import com.ruoyi.system.domain.RhdProjectList;
import com.ruoyi.system.service.*;
import com.ruoyi.system.service.impl.ImailServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.apache.catalina.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.*;

@Api("接收开发平台接口")
@RestController
@RequestMapping("/receive/api/")
public class ReceiveApiController extends BaseController {
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

    private final static String ksd = "卡商端";
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
            rhdEmailCode.setCreateBy(ksd);
            iRhdEmailCodeService.insertRhdEmailCode(rhdEmailCode);
        }else{
            return R.fail("邮箱地址必填");
        }
        return R.ok("Email Send Success");
    }

    @ApiOperation("注册用户")
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
        user.setCreateBy(ksd);
        user.setDeptId(deptId);
        user.setSex("0");
        Long[] roleId = {107L};
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
    @PostMapping("/userLogin")
    public R<UsernamePasswordToken> userLogin(String userName,String pwd) {
        if(StringUtils.isNotNull(userName) && StringUtils.isNotNull(pwd) ){
            UsernamePasswordToken token = new UsernamePasswordToken(userName, pwd, false);
            Subject subject = SecurityUtils.getSubject();
            try {
                subject.login(token);
                return R.ok(token);
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
    public R<SysUser> getUserData(String loginName) {
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
    }

    @ApiOperation("设备信息上报")
    @PostMapping("/deviceReport")
    public R<String> deviceReport(String onlineCardNumber,String localCards,String deviceCodeStr,String versions) {
        RhdDeviceCode rhdDeviceCode = new RhdDeviceCode();
        if(StringUtils.isNotNull(onlineCardNumber)){
            rhdDeviceCode.setOnlineCardNumber(Long.valueOf(onlineCardNumber));
        }else{
            return R.fail("在线卡数必填");
        }
        if(StringUtils.isNotNull(localCards)){
            rhdDeviceCode.setLocalCards(Long.valueOf(localCards));
        }else{
            return R.fail("本机卡数必填");
        }
        if(StringUtils.isNotNull(deviceCodeStr)){
            rhdDeviceCode.setDeviceCodeStr(deviceCodeStr);
        }else{
            return R.fail("设备码必填");
        }
        if(StringUtils.isNotNull(versions)){
            rhdDeviceCode.setVersions(versions);
        }else{
            return R.fail("版本号必填");
        }
        rhdDeviceCode.setCreateBy(ksd);
        rhdDeviceCode.setCreateTime(new Date());
        rhdDeviceCode.setStatus("0");
        int result =  deviceCodeService.insertRhdDeviceCode(rhdDeviceCode);
        if(result>0){
            return R.ok("上报数据成功");
        }else{
            return R.fail("上报数据失败");
        }
    }

    @ApiOperation("卡号数据上报")
    @PostMapping("/cardsNumberReport")
    public R<String> cardsNumberReport(String deviceCodeStr,String phoneNumber,String operators) {
        RhdCardsList card = new RhdCardsList();
        if(StringUtils.isNotNull(deviceCodeStr)){
            card.setDeviceCodeStr(deviceCodeStr);
        }else{
            return R.fail("设备码必填");
        }
        if(StringUtils.isNotNull(phoneNumber)){
           card.setPhoneNumber(phoneNumber);
        }else{
            return R.fail("手机号码必填");
        }
        if(StringUtils.isNotNull(operators)){
            card.setOperators(operators);
        }else{
            return R.fail("运营商必填");
        }


        card.setCreateBy(ksd);
        card.setCreateTime(new Date());
        card.setStatus("0");
        int result =  cardsListService.insertRhdCardsList(card);
        if(result>0){
            return R.ok("上报数据成功");
        }else{
            return R.fail("上报数据失败");
        }
    }

    @ApiOperation("新增项目")
    @PostMapping("/addProject")
    public R<String> addProject(String projectName,String projectType,String projectPrice,String themRoughly,
                                  Long cardsSupplied,String dockingStatus,String openExclusive, String appointExclusive,
                                String myExclusive,String createBy) {
        RhdProjectList rhdProjectList = new RhdProjectList();
        if(StringUtils.isNotNull(projectName)){
            rhdProjectList.setProjectName(projectName);
        }else{
            return R.fail("项目名称必填");
        }
        if(StringUtils.isNotNull(projectType)){
            rhdProjectList.setProjectType(projectType);
        }else{
            return R.fail("项目类型必填");
        }
        if(StringUtils.isNotNull(projectPrice)){
            rhdProjectList.setProjectPrice(BigDecimal.valueOf(Long.valueOf(projectPrice)));
        }else{
            return R.fail("项目价格必填");
        }
        if(StringUtils.isNotNull(themRoughly)){
            rhdProjectList.setThemRoughly(themRoughly);
        }else{
            return R.fail("项目号段必填");
        }
        if(StringUtils.isNotNull(cardsSupplied)){
            rhdProjectList.setCardsSupplied(cardsSupplied);
        }else{
            return R.fail("供卡数量必填");
        }
        if(StringUtils.isNotNull(dockingStatus)){
            rhdProjectList.setDockingStatus(dockingStatus);
        }else{
            return R.fail("对接状态必填");
        }
        if(StringUtils.isNotNull(openExclusive)){
            rhdProjectList.setOpenExclusive(openExclusive);
        }
        if(StringUtils.isNotNull(appointExclusive)){
            rhdProjectList.setAppointExclusive(appointExclusive);
        }
        if(StringUtils.isNotNull(myExclusive)){
            rhdProjectList.setMyExclusive(myExclusive);
        }
        if(StringUtils.isNotNull(createBy)){
            rhdProjectList.setCreateBy(createBy);
            rhdProjectList.setCreateTime(DateUtils.getNowDate());
        }else{
            return R.fail("创建者名称必填");
        }
        rhdProjectListService.insertRhdProjectList(rhdProjectList);
        return R.ok("addProjectSuccess");
    }



}

