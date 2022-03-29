package com.gjs.util;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/CheckCodeUtil")
public class CheckCodeUtil extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置数字的个数及干扰线的条数
        LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(100, 30, 4, 20);
        //获得生成的验证码
        String checkcode = lineCaptcha.getCode();
        HttpSession session = request.getSession();
        //将生成的验证码放到session中
        session.setAttribute("checkcode",checkcode);

        //图形验证码写出，可以写出到文件，也可以写出到流
        lineCaptcha.write(response.getOutputStream());

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
