package com.ruoyi.web;

import com.ruoyi.common.utils.security.SymmetricEncryptionUtil;

public class HhTest {

    private final int num = 1;
    /**
     * AES密钥
     */
    private static  final String AES_KEY = "WHWU123KOBEHCWWCH1P@SSW0RDWCH123";
    public static void main(String[] args) throws Exception {

        String str = "你好张三";
        System.out.println("原文:" + str);
        System.out.println("密钥:" + AES_KEY);

        String aesEncrypt = SymmetricEncryptionUtil.aesEncrypt(str, AES_KEY);
        System.out.println("加密后:" + aesEncrypt);

        String aesDecrypt = SymmetricEncryptionUtil.aesDecrypt(aesEncrypt, AES_KEY);
        System.out.println("解密后:" + aesDecrypt);
    }

    public static String getNum(){
        return "5";
    }
}
