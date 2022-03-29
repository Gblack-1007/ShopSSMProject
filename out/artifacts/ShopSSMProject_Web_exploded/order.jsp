<%--
  Created by IntelliJ IDEA.
  User: Jeffery
  Date: 2021/4/25
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="WEB-INF/jsp/header.jsp" %>
<html>
<head>
    <title>购物商城-订单信息</title>
    <link rel="stylesheet" href="layui/css/layui.css">
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;
        }

        .info {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            margin-left: 5px;
            margin-right: 5px;
            color: #579AD6;
            font-size: 13px;
            -webkit-box-orient: vertical;
        }

    </style>
</head>
<body>
<div class="layui-main" style="margin-top:10px;width: 1000px;position: relative;background-color: #AACDED">
<p style="font-size: 15px;font-weight: bold;margin-left: 20px">订单信息</p>

    <div style="background-color: #FFFFFF;margin: 5px;padding: 10px">
        <p style="font-size: 15px;font-weight: bold;margin-left: 20px;">
            <span style="color: #FF0000">帅哥/美女</span>:你好；你当前共有[3]个订单:(点击订单可以显示订单下的购物明细)
        </p>
        <table style="text-align: center;margin: 0px 20px 0px 20px">
            <tr style="border-right:1px #CCCCCC solid;border-left:1px #CCCCCC solid; border-bottom:2px #CCCCCC solid;border-top:2px #CCCCCC solid;background-color: #FFF4D7;height: 30px">
                <td style="width: 20%">订单编号</td>
                <td style="width: 30%">下单时间</td>
                <td style="width: 15%">发货时间</td>
                <td style="width: 15%">订单状态</td>
                <td style="width: 15%">订单总金额</td>
            </tr>
            <tr  style="height: 28px;border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid">
                <td><input type="checkbox">OP-202022123234533</td>
                <td>2020-10-14</td>
                <td>2020-10-14</td>
                <td>等待发货</td>
                <td>123235.45</td>
            </tr>
            <tr style="border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid;background-color: #CCCCCC;height: 25px">
                <td>物品图片</td>
                <td>标题</td>
                <td>供应商</td>
                <td>价格</td>
                <td>购买数量</td>
            </tr>
            <tr style="border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid;border-bottom: 1px #CCCCCC solid;height: 80px">
                <td><img src="images/article/20130331_1_1.jpg" alt="" width="70px"></td>
                <td><span class="info">Cetaphil丝塔芙洁面乳 237ml 伦比的温和洁面新体验 所有肤质全部适用洁面新体验 所有肤质全部适用</span></td>
                <td>Cetaphil丝塔芙洁面乳</td>
                <td>108.0</td>
                <td>10</td>
            </tr>

        </table>
        <table style="text-align: center;margin: 0px 20px 0px 20px">
            <tr style="border-right:1px #CCCCCC solid;border-left:1px #CCCCCC solid; border-bottom:2px #CCCCCC solid;border-top:2px #CCCCCC solid;background-color: #FFF4D7;height: 30px">
                <td style="width: 20%">订单编号</td>
                <td style="width: 30%">下单时间</td>
                <td style="width: 15%">发货时间</td>
                <td style="width: 15%">订单状态</td>
                <td style="width: 15%">订单总金额</td>
            </tr>
            <tr  style="height: 28px;border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid">
                <td><input type="checkbox">OP-202022123234533</td>
                <td>2020-10-14</td>
                <td>2020-10-14</td>
                <td>等待发货</td>
                <td>123235.45</td>
            </tr>
            <tr style="border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid;background-color: #CCCCCC;height: 25px">
                <td>物品图片</td>
                <td>标题</td>
                <td>供应商</td>
                <td>价格</td>
                <td>购买数量</td>
            </tr>
            <tr style="border-bottom: 1px #CCCCCC solid;border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid;height: 80px">
                <td><img src="images/article/20130331_1_1.jpg" alt="" width="70px"></td>
                <td><span class="info">Cetaphil丝塔芙洁面乳 237ml 伦比的温和洁面新体验 所有肤质全部适用洁面新体验 所有肤质全部适用</span></td>
                <td>Cetaphil丝塔芙洁面乳</td>
                <td>108.0</td>
                <td>10</td>
            </tr>

        </table>
        <table style="text-align: center;margin: 0px 20px 0px 20px">
            <tr style="border-right:1px #CCCCCC solid;border-left:1px #CCCCCC solid; border-bottom:2px #CCCCCC solid;border-top:2px #CCCCCC solid;background-color: #FFF4D7;height: 30px">
                <td style="width: 20%">订单编号</td>
                <td style="width: 30%">下单时间</td>
                <td style="width: 15%">发货时间</td>
                <td style="width: 15%">订单状态</td>
                <td style="width: 15%">订单总金额</td>
            </tr>
            <tr  style="height: 28px;border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid">
                <td><input type="checkbox">OP-202022123234533</td>
                <td>2020-10-14</td>
                <td>2020-10-14</td>
                <td>等待发货</td>
                <td>123456.45</td>
            </tr>
            <tr style="border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid;background-color: #CCCCCC;height: 25px">
                <td>物品图片</td>
                <td>标题</td>
                <td>供应商</td>
                <td>价格</td>
                <td>购买数量</td>
            </tr>
            <tr style="border-bottom: 1px #CCCCCC solid;border-left: 1px #CCCCCC solid;border-right: 1px #CCCCCC solid;height: 80px">
                <td><img src="images/article/20130331_1_1.jpg" alt="" width="70px"></td>
                <td>Cetaphil丝塔芙洁面乳 237ml 伦比的温和洁面新体验 所有肤质全部适用洁面新体验 所有肤质全部适用</td>
                <td>Cetaphil丝塔芙洁面乳</td>
                <td>108.0</td>
                <td>10</td>
            </tr>

        </table>

    </div>
    <img src="images/step.jpg"  width="1000px" style="margin-top: 10px" alt="">

</div>

</body>
</html>
