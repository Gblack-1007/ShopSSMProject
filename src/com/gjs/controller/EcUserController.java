package com.gjs.controller;

import com.gjs.pojo.EcUser;
import com.gjs.service.EcUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class EcUserController {
    @Autowired
    EcUserService ecUserService;

    @RequestMapping("/login")
    public String login(String username, String password, String checkcode, HttpSession session, Model model) {
        System.out.println("用户名：" + username + "，密码：" + password+",验证码："+checkcode);

        //1.获得session中的验证码
        String checkcodeSession = (String) session.getAttribute("checkcode");
        //定义一个变量用来保存用户登录的结果
        String loginInfo = "对不起，用户不存在";
        if (!checkcode.equalsIgnoreCase(checkcodeSession)) {
            loginInfo = "验证码错误";
        } else {
            //1.将获取到的数据提交给service层完成功能处理
            EcUser ecUser = ecUserService.findByLoginName(username);
            if (ecUser != null) {
                //查询到用户，比较密码是否正确
                if (ecUser.getPassword().equals(password)) {
                    //说明登录成功，密码也是正确的
                    //将用户所用的信息保存到session中供其他页面后续访问
                    session.setAttribute("ecUser", ecUser);
                    //跳转到index页面
                    return "index";
                } else {
                    loginInfo = "对不起，密码错误！";
                }
            }
        }
        //将结果返回给login界面并提示数据
        model.addAttribute("loginInfo", loginInfo);
        return "login";

    }

    @RequestMapping("/register")
    public String register(EcUser ecUser, Model model) {
        //随机给个邮箱
        String emial = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        ecUser.setEmail(emial);
        //注册时间
        ecUser.setCreateDate(new Date());
        //角色
        ecUser.setRole(1);
        System.out.println("注册信息：" + ecUser);

        //调用service完成注册功能
        int in = ecUserService.addEcUser(ecUser);
        if (in > 0) {
            //注册成功，跳转到login.jsp
            return "login";
        }
        model.addAttribute("registerInfo", "注册失败，请仔细检查！");
        return "register";
    }

    @RequestMapping("/checkedLoginName")
    @ResponseBody
    public String checkedLoginName(String loginName) {
        System.out.println("ajax--->" + loginName);
        //调用Service层完成数据查询
        EcUser ecUser = ecUserService.findByLoginName(loginName);
//        //如果查询到的数据是空的说明这个用户没有被注册过，可以正常注册，
        System.out.println(ecUser);
        if (ecUser == null) {
            return "0";
        }
        return "1";
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        //将session中的User清空就可以，清空的思路，就是创建一个同名的，然后有效时间设置为0
        session.setAttribute("ecUser", null);
        session.setMaxInactiveInterval(0);//有效时间设置为0
        return "index";
    }
}
