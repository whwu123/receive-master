package com.ruoyi.web.controller.tool;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
import com.ruoyi.system.domain.RhdProjectList;
import com.ruoyi.system.service.IRhdProjectListService;
import com.ruoyi.system.service.ISysUserService;
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

    @ApiOperation("注册用户")
    @PostMapping("/registerUser")
    public R<String> registerUser(String loginName,String userName,String email,String phonenumber,
                                  String sex, String password,Long deptId,String createBy) {
        SysUser user = new SysUser();
        if(StringUtils.isNotNull(loginName)){
            if (UserConstants.USER_NAME_NOT_UNIQUE.equals(userService.checkLoginNameUnique(loginName))){
                return R.fail("新增用户'" + loginName + "'失败，登录账号已存在");
            }else{
                user.setLoginName(loginName);
            }
        }else{
            return R.fail("登录名称必填");
        }

        if(StringUtils.isNotNull(userName)){
            user.setUserName(userName);
        }else{
            return R.fail("用户姓名必填");
        }

        if(StringUtils.isNotNull(password)){
            user.setSalt(ShiroUtils.randomSalt());
            user.setPassword(passwordService.encryptPassword(user.getLoginName(), password, user.getSalt()));
        }else{
            return R.fail("登录密码必填");
        }

        if(StringUtils.isNotNull(createBy)){
            user.setCreateBy(createBy);
        }else{
            return R.fail("创建者名称必填");
        }

        if(StringUtils.isNotNull(deptId)){
            user.setDeptId(deptId);
        }else{
            return R.fail("部门ID必填");
        }

        if(StringUtils.isNotNull(email)){
            user.setEmail(email);
        }
        if(StringUtils.isNotNull(phonenumber)){
            user.setPhonenumber(phonenumber);
        }

        if(StringUtils.isNotNull(sex)){
            user.setSex(sex);
        }else{
            user.setSex("0");
        }
        Long[] roleId = {107L};
        user.setRoleIds(roleId);
        userService.insertUser(user);
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

