package com.ruoyi.common.utils.security;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Base64;

public class SymmetricEncryptionUtil {
    private static final String AES = "AES";
    private static final String DES = "DES";
    /**
     * AES密钥
     */
    private static final String AES_KEY = "FFC22E80F61AB7295C02493856B4C520";

    /**
     * AES模式
     */
    private static final String AES_MODE = "AES/ECB/PKCS5Padding";


    /**
     * DES密钥: 加解密用到的秘钥-getBytes().length即字节的长度必须大于等于8，否则报异常java.security.InvalidKeyException: Wrong key size
     */
    private static final String DES_KEY = "*%#@()^&";
    /**
     * DES模式
     * "AES/ECB/PKCS5Padding"在加密和解密时必须相同，可以直接写”AES”,这样就是使用默认模式分别的意思为：AES是加密算法，ECB是工作模式，PKCS5Padding是填充方式。
     */
    private static final String DES_MODE = "DES/ECB/PKCS5Padding";


    /**
     * 使用AES对字符串加密
     *
     * @param str utf8编码的字符串
     * @param key 密钥（16字节）
     * @return 加密结果
     * @throws Exception
     */
    public static String aesEncrypt(String str, String key) throws Exception {
        if (str == null || key == null) {
            return null;
        }

        //AES/ECB/PKCS5Padding在加密和解密时必须相同
        Cipher cipher = Cipher.getInstance(AES_MODE);
        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), AES));
        byte[] bytes = cipher.doFinal(str.getBytes(StandardCharsets.UTF_8));

        //使用base64编码
        return Base64.getEncoder().encodeToString(bytes);
    }

    /**
     * 使用AES对数据解密
     *
     * @param base64Encoder base64编码后的字符串
     * @param key           密钥（16字节）
     * @return 解密结果
     * @throws Exception
     */
    public static String aesDecrypt(String base64Encoder, String key) throws Exception {
        if (base64Encoder == null || key == null) {
            return null;
        }

        SecureRandom random = new SecureRandom();
        Cipher cipher = Cipher.getInstance(AES_MODE);
        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), AES), random);

        //使用base64解码
        byte[] base64DecoderByte = Base64.getDecoder().decode(base64Encoder);
        return new String(cipher.doFinal(base64DecoderByte), StandardCharsets.UTF_8);
    }


    /**
     * 使用DES对字符串加密
     *
     * @param str utf8编码的字符串
     * @param key 密钥（56位，7字节）
     * @return 加密结果
     * @throws Exception
     */
    public static String desEncrypt(String str, String key) throws Exception {
        if (str == null || key == null) {
            return null;
        }

        SecureRandom random = new SecureRandom();
        Cipher cipher = Cipher.getInstance(DES_MODE);
        cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), DES), random);
        byte[] bytes = cipher.doFinal(str.getBytes(StandardCharsets.UTF_8));

        //使用base64编码
        return Base64.getEncoder().encodeToString(bytes);
    }

    /**
     * 使用DES对数据解密
     *
     * @param base64Encoder base64编码后的字符串
     * @param key           密钥（16字节）
     * @return 解密结果
     * @throws Exception
     */
    public static String desDecrypt(String base64Encoder, String key) throws Exception {
        if (base64Encoder == null || key == null) {
            return null;
        }
        Cipher cipher = Cipher.getInstance(DES_MODE);
        cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), DES));
        //使用base64解码
        byte[] base64DecoderByte = Base64.getDecoder().decode(base64Encoder);

        return new String(cipher.doFinal(base64DecoderByte), StandardCharsets.UTF_8);
    }

}

