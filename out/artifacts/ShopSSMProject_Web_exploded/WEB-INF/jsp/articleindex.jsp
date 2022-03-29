<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/4/7
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>广师微师生-首页</title>
    <link rel="stylesheet" href="layui/css/layui.css">

    <!-- 引入 layui.js -->
    <script src="layui/layui.js"></script>
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;
        }

        .ul2 li {
            height: 35px;
            text-align: left;
            border-bottom: #FFE2E2 2px solid;
            line-height: 35px;
            font-size: 13px;
            margin-left: 5px;
            margin-right: 5px;
        }

        .ul2 li a {
            color: #0000FF;
        }

        .img1 {
            width: 140px;
            height: 90px;
            border: 2px #CCCCCC solid;
        }

        .img1:hover {
            border: 2px #FF0000 solid;
        }

        /*设置文字显示超过两个后面的用三个点替代*/
        .info {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            width: 140px;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
        }
    </style>
</head>
<body >
<div class="layui-main" style="width: 1000px;height: 800px;position: relative">
    <div style="width: 230px;height: 460px;background-color: seagreen;">
        <h1 style="font-weight: bold;color: #ffffff;margin-left: 10px;margin-top: 5px">热门板块</h1>
        <div style="background-color: #FFFFFF;width: 224px;height: 420px;margin: 3px;clear:both">

            <u1 class="ul2">

                <li >
                    <a href="${pageContext.request.contextPath}/findArticles">.首页</a><span style="float: right;color: #F7DDA4"></span>
                </li>
                <c:forEach var="litype" items="${listTypes}" varStatus="con">
                    <li>
                        <a href="${pageContext.request.contextPath}/findByType?articleType=${litype.code}">.${litype.name}</a><span style="float: right;color: #F7DDA4">&gt;</span>
                    </li>
                </c:forEach>

            </u1>

        </div>
    </div>
    <div style="width: 770px;height: 1000px;position: absolute;top:0px;left: 230px">
        <!--右边上-->
        <div style="text-align: center;margin-top: 15px;height: 40px;line-height: 40px">

            <form action="likeArticle" method="post">
            <span>搜你想搜：</span>
            <select name="type" id="select1">
                <option>所有板块</option>
                <option>空教室预约</option>
                <option>图书馆借阅</option>
                <option>学习资源</option>
                <option>社团</option>
            </select>
            <input type="text" style="width: 400px;height: 25px;border-radius: 3px" name="likeMsg">
            <input type="submit" value="&nbsp;&nbsp;搜索&nbsp;&nbsp;">
            </form>
        </div>

        <div style="margin-left:3px;width: 764px;height: 950px;border-radius: 3px;border: #cccccc 2px solid;">
            <!--轮播图-->
            <div class="layui-carousel layui-main" id="test1" lay-filter="test1" style="margin-top: 5px">
                <div carousel-item="">
                    <div><img src="images/b1.jpg" alt="" style="width:750px;height: 250px;"></div>
                    <div><img src="images/b2.jpg" alt="" style="width:750px;height: 250px;"></div>
                    <div><img src="images/b3.jpg" alt="" style="width:750px;height: 250px;"></div>

                </div>
            </div>
            <div style="margin-top:5px;margin-left:1px;width: 99%;height: 40px;background-color: seagreen;border: bisque 3px solid;border-bottom:none;border-radius: 3px 3px 0px 0px">
                <div style="width:100px;height: 30px;background-color: #FFFFFF;margin-top: 10px;text-align: center;line-height: 30px;border-radius: 5px 5px 0px 0px;">
                    <span style="color: cornflowerblue;font-size: 18px;font-weight: bold">签到考勤</span>
                </div>


                <div style="margin-left:-2px;width: 756px;height: 900px;border: #CCCCCC 2px solid;border-top: none;overflow: auto ">
                    <table class="table2" style="width: 100%;">
                        <tr>
                            <c:forEach var="li" items="${list}" varStatus="cou">
                            <td style="width:170px;height:150px;text-align: center">
                                <br>
                                <br>
                                <a href="${pageContext.request.contextPath}/selectById?articleId=${li.id}" style="width: 200px;height: 200px">
                                    <img class="img1" src="images/article/${li.image}" alt="">
                                </a>
                                <p style="margin-top: 5px;"><span
                                        style="color: #CCCCCC;font-weight: bold;font-size: 15px;">${li.description}</span><span
                                </p>
                                <p style="margin-top: 5px;"><a href="${pageContext.request.contextPath}/selectById?articleId=${li.id}"><span class="info">${li.title}</span></a>
                                </p>
                                <br>
                                <br>
                            </td>
                            <c:if test="${cou.count % 4 eq 0}">
                        <tr>
                            </c:if>
                            </c:forEach>

                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>

    <img src="images/step.jpg" style="margin-top: 800px" alt="">

</div>


</body>
<!-- 注意：如果你直接复制所有代码到本地，上述 JS 路径需要改成你本地的 -->
<script>
    layui.use(['carousel', 'form'], function () {
        var carousel = layui.carousel
            , form = layui.form;

        //常规轮播
        carousel.render({
            elem: '#test1'
            , width: '750px'
            , height: '250px'
            , arrow: 'always'
            , anim: 'default'
            , interval: '2000'
        });

    });
</script>
</html>
