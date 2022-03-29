<%--
  Created by IntelliJ IDEA.
  User: Jeffery
  Date: 2021/4/15
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/jsp/header.jsp" %>
<html>
<head>
    <title>广师微师生-注册</title>
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;
        }

        .table1 {
            border-spacing: 10px 30px;
        }

        .table1 tr td span {
            color: #FF0000;
        }

        .table1 tr td input[type=text] {
            width: 250px;
            height: 25px;
        }

        .table1 tr td input[type=password] {
            width: 250px;
            height: 25px;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
</head>
<body>

<div style="width: 1000px;height: 900px;">
    <div style="padding-left: 30px;padding-right: 30px; margin-top: 15px">
        <span style="font-size: 18px;font-weight: bold">注册新用户</span>
        <span style="float: right">我已经注册，现在<a href="${pageContext.request.contextPath}/login.jsp">登录</a></span>
    </div>
    <div style=" text-align:center;margin-top:30px;width: 1000px;height: 900px;border-left: #CCCCCC 3px solid;border-right: #CCCCCC 3px solid;">
        <span style="font-size: 17px;font-weight: bold;color: #C92F30">个人用户信息</span>
        <hr style="width: 950px;height: 2px;background-color: #187147;border: none;margin-top: 20px">

        <form name="empForm" id="empForm" method="post" action="register">
            <table class="table1">
                <tr>
                    <td></td>
                    <td><span style="color:#FF0000;">${registerInfo}</span></td>
                </tr>
                <tr>
                    <td><span>*</span>登录名</td>
                    <td><input type="text" name="loginName"></td>
                </tr>
                <tr>
                    <td><span>*</span>设置密码</td>
                    <td><input type="password" name="password" id="password1"></td>
                </tr>
                <tr>
                    <td><span>*</span>设置确认</td>
                    <td><input type="password" name="password2"></td>
                </tr>
                <tr>
                    <td><span>*</span>真实姓名</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td><span>*</span>学&nbsp&nbsp号</td>
                    <td><input type="text" name="stu_num"></td>
                </tr>
                <tr>
                    <td><span>*</span>院&nbsp&nbsp系</td>
                    <td><input type="text" name="stu_col"></td>
                </tr>
                <tr>
                    <td><span>*</span>班&nbsp&nbsp级</td>
                    <td><input type="text" name="class"></td>
                </tr>
                <tr>
                    <td><span>*</span>手机号</td>
                    <td><input type="text" name="phone"></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align: left"><input type="submit" value=""
                                                        style="background-image: url('images/register.jpg');width: 167px;height: 31px;border: none">
                    </td>
                </tr>
            </table>
        </form>
        <textarea rows="5" cols="60">    广东微师生是与我校联合建设的集行政管理、师生交流以及个人成长为一体的平台，注册用户需遵守相关法律法规和学校纪律制度，网络不是法外之地，请注意个人和学校形象！</textarea>
    </div>

</div>

</body>
<script>
    //自定义校验规则验证手机号码
    $.validator.addMethod(
        "phoneChecked",
        function (value, element, params) {
            //value:也就是value的值
            //element:被校验的元素对象
            //params：校验规则的参数
            var reg = /^1[3-9]\d{9}$/;
            if (!reg.test(value.trim())) {
                return false;
            }
            return true;
        }
    );

    //自定义校验规则ajax验证用户是否注册
    $.validator.addMethod(
        "checkedLoginName",
        function (value, element, params) {
            //value:也就是value的值
            //element:被校验的元素对象
            //params：校验规则的参数

            //完成ajax后台数据交互
            var flag = false;
            var json = {"loginName": value};
            //设置同步
            $.ajaxSettings.async = false;
            $.post("checkedLoginName", json, function (data, code) {
                console.log("----------->" + data);
                if (data != 1) {
                    flag = true;
                    console.log("倒数第三句++++++>" + flag);
                }
            });
            $.ajaxSettings.async = true;
            console.log("倒数第二句" + flag);

            return flag;
        }
    );

    $("#empForm").validate({
        rules: {
            loginName: {
                required: true,
                rangelength: [5, 8],
                checkedLoginName: true,
            },
            password: {
                required: true,
                minlength: 5
            },
            password2: {
                required: true,
                equalTo: "#password1"
            },
            phone: {
                required: true,
                phoneChecked: true,
            }


        },
        messages: {
            loginName: {
                required: "<span style='color: #FF0000;font-size: 13px'>用户名必须输入！</span>",
                rangelength: "<span style='color: #FF0000;font-size: 13px'>用户名必须是5-8位</span>",
                checkedLoginName: "<span style='color: #FF0000;font-size: 13px'>该用户已经被注册</span>"
            },
            password: {
                required: "<span style='color: #FF0000;font-size: 13px'>密码不能为空！</span>",
                minlength: "<span style='color: #FF0000;font-size: 13px'>密码必须大于5位！</span>"
            },
            password2: {
                required: "<span style='color: #FF0000;font-size: 13px'>确认密码不能为空！</span>",
                equalTo: "<span style='color: #FF0000;font-size: 13px'>两次密码不一至！</span>",
            },
            phone: {
                required: "<span style='color: #FF0000;font-size: 13px'>不能为空！</span>",
                phoneChecked: "<span style='color: #FF0000;font-size: 13px'>手机号码格式不正确</span>",
            }

        }
    });

</script>
</html>
