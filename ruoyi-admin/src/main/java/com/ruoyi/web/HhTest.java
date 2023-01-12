package com.ruoyi.web;

import com.alibaba.fastjson.JSONObject;
import com.ruoyi.common.utils.security.SymmetricEncryptionUtil;
import com.ruoyi.common.utils.uuid.IdUtils;
import com.ruoyi.system.domain.RhdUserinfoNetty;
import com.ruoyi.web.controller.netty.NettyServer;
import org.springframework.boot.CommandLineRunner;

public class HhTest implements CommandLineRunner {

    private final int num = 1;
    /**
     * AES密钥
     */
    private static  final String AES_KEY = "WHWU123KOBEHCWWCH1P@SSW0RDWCH123";
    public static void main(String[] args) throws Exception {
        String jsonStr = "{\"cmd\": \"userInfo\",\"data\": {\"loginName\": \"伍春晖\",\"deviceCodeStr\": \"13874562188\"}}";
        JSONObject jsonObject = JSONObject.parseObject(jsonStr);
        String cmdStr = jsonObject.getString("cmd");
        if(cmdStr.equals("userInfo")){
            //进行用户信息长连接的插入
            JSONObject userinfoNettyObject = jsonObject.getJSONObject("data");
            String loginName = userinfoNettyObject.getString("loginName");
            String deviceCodeStr = userinfoNettyObject.getString("deviceCodeStr");
            System.out.println(loginName);
            System.out.println(deviceCodeStr);

        }


        //System.out.println(IdUtils.fastSimpleUUID());
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
