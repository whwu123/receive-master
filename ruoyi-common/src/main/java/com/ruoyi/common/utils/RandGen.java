package com.ruoyi.common.utils;

import java.util.Random;


/**
 * 生成四位不重复的验证码
 */
public class RandGen {


    public static String codeGen() {    //生成随机数并返回字符串的静态方法codeGen
        char[] codeSequence = { 'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I',           //定义字符数组了，里面放26个英文字母和数字0~9
                'O', 'P', 'L', 'K', 'J', 'H', 'G', 'F', 'D',
                'S', 'A', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '1',
                '2', '3', '4', '5', '6', '7', '8', '9', '0' };
        Random random = new Random();      //创建一个Math里生成随机数的对象
        StringBuilder stringBuilder = new StringBuilder();//创建一个StringBuilder的对象
        int count = 0;
        while (true) {
            // 随机产生一个下标，通过下标取出字符数组中对应的字符
            char c = codeSequence[random.nextInt(codeSequence.length)];
            // 假设取出来的字符在动态字符中不存在，代表没有重复的
            if (stringBuilder.indexOf(c + "") == -1) {
                stringBuilder.append(c);
                count++;
                if (count == 4) {  //控制随机生成的个数
                    break;
                }

            }
        }
        return stringBuilder.toString();

    }
}
