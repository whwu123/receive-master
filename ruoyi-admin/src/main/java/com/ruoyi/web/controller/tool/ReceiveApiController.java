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
import com.ruoyi.system.domain.RhdEmailCode;
import com.ruoyi.system.domain.RhdProjectList;
import com.ruoyi.system.service.IRhdEmailCodeService;
import com.ruoyi.system.service.IRhdProjectListService;
import com.ruoyi.system.service.ISysUserService;
import com.ruoyi.system.service.impl.ImailServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.apache.catalina.User;
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

    private final static String ksd = "卡商端";
    private final static Long deptId = 446L;

    @ApiOperation("获取邮箱验证码")
    @GetMapping("/getEmailCode")
    public R<String> getEmailCode(String Email) {
        if(StringUtils.isNotNull(Email)){
            //给邮箱发送验证且保存到数据库
            String subject = "注册验证码";
            String contentCode = RandGen.codeGen();
            imailService.sendHtmlMail(Email,subject,"您的注册验证码为："+contentCode);
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
                return R.fail("新增用户'" + userName + "'失败，登录账号已存在");
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
                    return R.fail("登录密码必填");
                }
            }else {
                return R.fail("邮箱验证码校验失败");
            }
        }
        return R.ok("Please use this account and password to log in");
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

