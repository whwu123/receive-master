package com.ruoyi.web;

import com.ruoyi.common.utils.security.SymmetricEncryptionUtil;
import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.web.controller.netty.NettyServer;
import org.springframework.boot.CommandLineRunner;

public class HhTest implements CommandLineRunner {

    private final int num = 1;
    /**
     * AES密钥
     */
    private static  final String AES_KEY = "WHWU123KOBEHCWWCH1P@SSW0RDWCH123";
    public static void main(String[] args) throws Exception {
        System.out.println(IdUtils.fastSimpleUUID());

        /*String str = "你的短信是否由抖音极速项目这个内容";

        boolean status = str.contains("抖音项目");

        if(status){
            System.out.println("包含");

        }else{
            System.out.println("不包含");
        }*/



       /* String str = "你好伍峻涵";
        System.out.println("原文:" + str);
        System.out.println("密钥:" + AES_KEY);

        String aesEncrypt = SymmetricEncryptionUtil.aesEncrypt(str, AES_KEY);
        System.out.println("加密后:" + aesEncrypt);

        String aesDecrypt = SymmetricEncryptionUtil.aesDecrypt(aesEncrypt, AES_KEY);
        System.out.println("解密后:" + aesDecrypt);*/
    }

    public static String getNum(){
        return "5";
    }

    @Override
    public void run(String... args) throws Exception {
        new Thread(()->{
            try {
                new NettyServer(8000).run();
            }catch (Exception e){
                e.printStackTrace();
            }
        }).start();
    }
}
