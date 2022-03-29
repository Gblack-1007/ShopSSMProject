<%--
  Created by IntelliJ IDEA.
  User: Jeffery
  Date: 2021/4/15
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;

        }

        .ul1 li {
            float: left;
            margin-left: 20px;
        }

        .ul1 li a {
            font-size: 13px;
            color: #FFFFFF;
        }

        .ul1 li a:hover {
            color: #FFFF00;
        }
    </style>
</head>
<body>
<!--第一部分-->
<div style="height: 35px;width:100%;background-color: #EFEFEF;position: relative">
    <div class="layui-main" style="height: 35px;width: 1000px;text-align: right;line-height: 35px">
        <c:if test="${empty ecUser}">
            <a href="${pageContext.request.contextPath}/login.jsp">&nbsp;&nbsp;[用户登录]</a>
            <a href="${pageContext.request.contextPath}/register.jsp">&nbsp;&nbsp;[免费注册]</a>
        </c:if>
        <c:if test="${!empty ecUser}">&nbsp;&nbsp;${ecUser.name}
            <a href="${pageContext.request.contextPath}/logout">&nbsp;&nbsp;[注销]</a>
        </c:if>
        <a href="">&nbsp;&nbsp;[我的学院]</a>
        <a href="">&nbsp;&nbsp;[我的班级]</a>
        <a href="">&nbsp;&nbsp;设为首页</a>
        <a href="">&nbsp;&nbsp;加入收藏</a>

    </div>
</div>

<!--第二部分-->
<div class="layui-main" style="height: 120px;width:1000px;margin-top: 20px;position: relative">
    <a href="#"><img src="${pageContext.request.contextPath}/images/article/logo.PNG" alt=""></a>
    <img src="${pageContext.request.contextPath}/images/newlogo.png" alt="广师大" style="margin-left: 110px">
    <table style="position: absolute;top: 15px;right: 60px">
        <tr>
            <td><a href="#" style="text-decoration: none;font-size:16px;color: #9F978F;border: darkolivegreen 1.5px solid">&nbsp;&nbsp;<img
                    src="${pageContext.request.contextPath}/images/3.png" alt="">&nbsp;关于我们&nbsp;&nbsp;</a></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><a href="#" style="text-decoration: none;font-size:16px;color: #9F978F;border: darkolivegreen 1.5px solid">&nbsp;&nbsp;<img
                    src="${pageContext.request.contextPath}/images/4.png" alt="">&nbsp;联系方式&nbsp;&nbsp;</a></td>
        </tr>
    </table>
</div>

<!--第三部分-->
<div style="width: 100%;height: 38px;background-color: #187147">
    <div class="layui-main" style="width:1000px;height: 38px;line-height: 38px">

        <u1 class="ul1">

            <li>
                <a href="${pageContext.request.contextPath}/findArticles">首页</a>
            </li>
            <li style="float: right">
                <a href="${pageContext.request.contextPath}/findArticles">帮助</a>
            </li>
            <li style="float: right">
                <a href="${pageContext.request.contextPath}/findArticles">人工客服</a>
            </li>


        </u1>
    </div>
</div>
</body>

</html>
