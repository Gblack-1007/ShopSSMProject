<%--
  Created by IntelliJ IDEA.
  User: Jeffery
  Date: 2021/4/15
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/jsp/header.jsp" %>

<html>
<head>
    <title>广师微师生-登录</title>
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;
        }

        .table1 {
            margin: 30px;
            border-spacing: 20px 10px;
        }

        .table1 tr td input {
            width: 280px;
            height: 25px;
            background-color: #E8F0FE;
            border: 1px #CCCCCC solid;
        }

        .table1 tr td p {
            color: #CCCCCC;
        }
    </style>

</head>
<body>

<div style="background-image: url('images/学生.png');width: 1020px;height: 468px;position: relative">
    <div style="border-left: 3px #D8D8D7 solid;border-right: 3px #D8D8D7 solid;width: 500px;height: 330px;background-color:#FFFFFF;position: absolute;right: 30px;top:70px">

        <p style="width: 100%;text-align: right;margin-top: 20px;">还不是微师生用户？<a href="${pageContext.request.contextPath}/register.jsp"
                                                                              style="margin-right:40px">立即注册</a></p>
        <form action="login" method="post">
            <table class="table1">
                <tr>
                    <td>用户名</td>
                    <td>
                        <input type="text" name="username">
                        <p>请输入邮箱地址</p>
                    </td>
                </tr>
                <tr>
                    <td><span>密&nbsp;&nbsp;&nbsp;&nbsp;码</span></td>
                    <td>
                        <input type="password" name="password">
                        <p>请输入1-16为密码</p>
                    </td>
                </tr>
                <tr>
                    <td>验证码</td>
                    <td>
                        <input type="text" style="width: 100px" name="checkcode">
                        <a href="javascript:void(0)" onclick="updateImg()"><img id="checkcode" src="${pageContext.request.contextPath}/CheckCodeUtil" alt="图片飞了" style="border: #0C0C0C 1px solid"></a>
                        <a href="javascript:void(0)" onclick="updateImg()">看不清,换一张</a>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <span style="color: #FF0000">${loginInfo}</span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value=""
                               style="background-image: url('images/login_btn.png');width: 92px;height: 27px;">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;开心学习，快乐生活！ <a href="https://www.gpnu.edu.cn/" style="margin-left: 20px">广东技术师范大学</a>
                    </td>
                </tr>
            </table>

        </form>
    </div>

</div>

</body>
<script>
    //js代码刷新验证码
    function updateImg() {
        var checkcode = document.getElementById("checkcode");
        //通过修改时间戳的方法来要求浏览器不要获取缓存
        checkcode.src = "${pageContext.request.contextPath}/CheckCodeUtil?time=" + new Date().getTime();
    }
</script>
</html>
