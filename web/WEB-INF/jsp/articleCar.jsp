<%--
  Created by IntelliJ IDEA.
  User: Jeffery
  Date: 2021/4/25
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<html>
<head>
    <title>购物商城-购物车</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;
        }

        /*设置文字显示超过两个后面的用三个点替代*/
        .info {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 3;
            margin-left: 5px;
            margin-right: 5px;
            color: #579AD6;
            font-size: 13px;
            -webkit-box-orient: vertical;
        }
    </style>
</head>
<body>
<div class="layui-main" style="width: 1000px;height: 700px;position: relative">
    <table style="width: 1000px;text-align: center;margin-top: 30px">
        <tr style="background-color: #F7F4EB;color: #AC7B5B;height: 40px;border-bottom: #DFC9B2 2px solid">
            <td style="width: 5%">
                <input type="checkbox">全选
            </td>
            <td colspan="2" style="width: 35%">
                商品名称
            </td>
            <td style="width: 10%">
                积分
            </td>
            <td style="width: 15%">
                疯狂价
            </td>
            <td style="width: 10%">
                小计
            </td>
            <td style="width: 15%">
                数量
            </td>
            <td style="width: 20%">
                操作
            </td>
        </tr>
        <c:forEach var="licar"  items="${listCars}" varStatus="cou">
        <tr style="height: 90px;border-bottom: #CCCCCC 1px solid;">
            <td>
                <input type="checkbox">
            </td>
            <td><img src="${pageContext.request.contextPath}/images/article/${licar.image}" alt="" style="width: 60px;border: #CCCCCC 1px solid"></td>
            <td style="border-right: #CCCCCC 1px solid">

                <a href="${pageContext.request.contextPath}/selectById?articleId=${licar.articleid}"><span class="info">${licar.title}</span></a>
            </td>
            <td style="border-right: #CCCCCC 1px solid">
                0
            </td>
            <td style="border-right: #CCCCCC 1px solid" >
                <span style="color: #FF0000">￥${licar.price2}（${licar.discount}折）</span>
            </td>
            <td style="border-right: #CCCCCC 1px solid">
                ￥${licar.priceTotal}
            </td>

            <td style="border-right: #CCCCCC 1px solid">
                <div style="position: relative;height: 30px;width: 70px;margin-left: 20px">
                    <div style="position: absolute;left: 0px;top:0px">
                    <input readonly="readonly"type="text" style="width: 40px;height: 30px;text-align: center" value="${licar.buynum}">
                    </div>
                    <div style="position: absolute;top: 0px;left: 42px">
                        <input readonly="readonly" type="text" style="cursor: pointer;width: 30px;height: 15px;text-align: center;color: #FF0000" value="+">
                        <input readonly="readonly" type="text" style="cursor: pointer;width: 30px;height: 15px;text-align: center;color: #FF0000" value="-">
                    </div>
                </div>
            </td>
            <td>
                <p><a href="#" style="color: #5395C8">移入收藏</a></p>
                <p><a href="#"style="color: #5395C8">删除</a></p>

            </td>
        </tr>
        </c:forEach>
    </table>
    <div style="text-align: right;font-weight: bold">
    <p style="font-size: 20px;margin-top: 15px">数量总计：&nbsp;&nbsp;<span style="color: #FF0000;font-size: 20px;">50</span>&nbsp;&nbsp; (件)</p>
    <p style="font-size: 20px; margin-top: 15px">金额总计：&nbsp;&nbsp;<span style="color: #FF0000;font-size: 20px;">￥201831014.302</span>&nbsp;&nbsp; (折后价)</p>
        <div style="margin-top: 20px">
            <img src="${pageContext.request.contextPath}/images/shop.jpg" alt="">
            <img src="${pageContext.request.contextPath}/images/balance.jpg" alt="">
        </div>
    </div>
    <img src="${pageContext.request.contextPath}/images/step.jpg" style="margin-top: 10px" alt="">

</div>

</body>
</html>
