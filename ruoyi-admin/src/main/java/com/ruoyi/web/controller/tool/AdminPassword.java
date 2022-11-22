package com.ruoyi.web.controller.tool;

import org.apache.shiro.authc.credential.PasswordService;

public class AdminPassword {
    public static void main(String[] args) {
        // update sys_user u SET u.password=MD5(CONCAT(login_name, 'admin123', salt)) WHERE u.login_name='admin'

    }
}
