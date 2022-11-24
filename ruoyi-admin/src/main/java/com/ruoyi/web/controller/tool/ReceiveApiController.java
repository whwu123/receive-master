package com.ruoyi.web.controller.tool;

import com.ruoyi.common.constant.UserConstants;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.utils.ShiroUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.framework.shiro.service.SysPasswordService;
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

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Api("接收开发平台接口")
@RestController
@RequestMapping("/receive/api/")
public class ReceiveApiController extends BaseController {
    @Autowired
    private SysPasswordService passwordService;
    @Autowired
    private ISysUserService userService;

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
        return R.ok("请用该账号和密码进行登录");
    }


}

