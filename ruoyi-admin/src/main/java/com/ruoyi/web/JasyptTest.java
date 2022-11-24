package com.ruoyi.web;


import org.jasypt.encryption.StringEncryptor;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
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
    /**
     * 加密解密测试
     */
    @Test
    public void jasyptTest() {
        // 加密
        System.out.println(stringEncryptor.encrypt("root"));    // JSrINYe4IBotHndGjX1hnmY3mtPNUJlXjP12cx1+pHqUz2FNXGPu3Frnajh3QCXg
        // 解密
        System.out.println(stringEncryptor.decrypt("CAOHmC7h8GlSh8TYDh5obxvq1iiQIsj3JRCh1xLgM5L4BYP/L+BZgdLtmuKfBHJC"));    // root
    }

    /**
     * 测试加密之后的数据源使用是否正常
     *  查看是否能正常获取链接
     */
    @Test
    public void datasourceTest() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println(connection);     // HikariProxyConnection@1487059223 wrapping com.mysql.cj.jdbc.ConnectionImpl@48904d5a
        connection.close();
    }
}
