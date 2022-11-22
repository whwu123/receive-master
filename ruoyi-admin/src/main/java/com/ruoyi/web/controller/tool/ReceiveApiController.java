package com.ruoyi.web.controller.tool;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.R;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
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

    private final static Map<Integer, UserEntity2> users = new LinkedHashMap<Integer, UserEntity2>();
    {
        users.put(1, new UserEntity2(1, "admin", "admin123", "15888888888"));
        users.put(2, new UserEntity2(2, "ry", "admin123", "15666666666"));
    }

    @ApiOperation("获取用户列表")
    @GetMapping("/list")
    public R<List<UserEntity2>> userList()
    {
        List<UserEntity2> userList = new ArrayList<UserEntity2>(users.values());
        return R.ok(userList);
    }


}

@ApiModel(value = "UserEntity2", description = "用户实体")
class UserEntity2
{
    @ApiModelProperty("用户ID")
    private Integer userId;

    @ApiModelProperty("用户名称")
    private String username;

    @ApiModelProperty("用户密码")
    private String password;

    @ApiModelProperty("用户手机")
    private String mobile;

    public UserEntity2()
    {

    }

    public UserEntity2(Integer userId, String username, String password, String mobile)
    {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.mobile = mobile;
    }

    public Integer getUserId()
    {
        return userId;
    }

    public void setUserId(Integer userId)
    {
        this.userId = userId;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getMobile()
    {
        return mobile;
    }

    public void setMobile(String mobile)
    {
        this.mobile = mobile;
    }
}

