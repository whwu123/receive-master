package com.ruoyi.web.controller.system;

import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.PxEmail;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Objects;

@Controller
@RequestMapping("/system/pxEmail")
public class PxEmailController extends BaseController {

    @Resource
    private JavaMailSender javaMailSender;
    
    @Value("${spring.mail.username}")
    private String from;

    @ApiOperation("发送简单邮件")
    @PostMapping("/admin/sendSimpleEmail")
    public AjaxResult sendAdminSimpleEmail(@RequestBody PxEmail email) throws Exception {

        return AjaxResult.success("发送成功");
    }
}
