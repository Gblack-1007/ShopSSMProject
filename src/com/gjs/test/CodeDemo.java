package com.gjs.test;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;

/*
验证码demo
 */
public class CodeDemo {
    public static void main(String[] args) {
        //定义图形验证码的长和宽
//        LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(200, 100);
        //设置数字的个数及干扰线的条数
       // LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(200, 100,1,5);
        //干扰线是圆圈
        CircleCaptcha captcha = CaptchaUtil.createCircleCaptcha(200, 100,4,30);
        //图形验证码写出，可以写出到文件，也可以写出到流
        captcha.write("d:/line.png");
    }
}
