package com.ruoyi.web;


import com.ruoyi.common.utils.RandGen;
import com.ruoyi.system.service.impl.ImailServiceImpl;
import org.jasypt.encryption.StringEncryptor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@SpringBootTest
@RunWith(SpringRunner.class)
public class JasyptTest {
    @Autowired
    private StringEncryptor stringEncryptor;
    @Autowired
    private DataSource dataSource;
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 加密解密测试
     */
    @Test
    public void jasyptTest() {
        // 加密
       System.out.println(stringEncryptor.encrypt("StackOverflow&62$1"));    // JSrINYe4IBotHndGjX1hnmY3mtPNUJlXjP12cx1+pHqUz2FNXGPu3Frnajh3QCXg
        // 解密
       // System.out.println(stringEncryptor.decrypt("CAOHmC7h8GlSh8TYDh5obxvq1iiQIsj3JRCh1xLgM5L4BYP/L+BZgdLtmuKfBHJC"));    // root

        String code = RandGen.codeGen();
        logger.info("code = " + code);
    }

    /**
     * 测试加密之后的数据源使用是否正常
     *  查看是否能正常获取链接
     */
    @Test
    public void datasourceTest() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println("测试==================="+connection);     // HikariProxyConnection@1487059223 wrapping com.mysql.cj.jdbc.ConnectionImpl@48904d5a
        connection.close();
    }

    @Autowired
    private ImailServiceImpl imailService;
    /**
     * 测试发送文本邮件
     */
    @Test
    public void sendmail() {

        //发送邮件
        imailService.sendSimpleMail("472997069@qq.com","主题：你好普通邮件","内容：第一封邮件");

    }

    @Test
    public void sendmailHtml(){
        imailService.sendHtmlMail("472997069@qq.com","主题：你好html邮件","<h1>内容：第一封html邮件</h1>");

    }


}
