package com.ruoyi.web;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SendemailApplicationTests {

    @Autowired
    private JavaMailSender mailSender222;
    /**
     * 配置文件中我的qq邮箱
     */
    @Value("${spring.mail.from}")
    private String from;
    /**
     * 测试发送文本邮件
     */
    @Test
    public void sendmail() {
        //创建SimpleMailMessage对象
        SimpleMailMessage message = new SimpleMailMessage();
        //邮件发送人
        message.setFrom(from);
        //邮件接收人
        message.setTo("472997069@qq.com");
        //邮件主题
        message.setSubject("subject");
        //邮件内容
        message.setText("content");
        //发送邮件
        mailSender222.send(message);
    }

}
