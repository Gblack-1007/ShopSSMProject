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
    <title>购物商城-订单结算</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <style>
        * {
            margin: 0 auto;
            padding: 0;
            font-size: 14px;
            list-style: none;
            text-decoration: none;
        }

        .textRed {
            color: #FF0000;
        }

        .tableads {
            background-color: #EFF5F8;
            width: 970px;
            border-bottom: #B7D2DF 2px solid;
            border-top: #B7D2DF 2px solid;
            border-spacing: 5px 15px;
            border-collapse: separate;
        }

        .textRight {
            text-align: right;
        }

        .inputsub {
            margin-left: 60px;
            color: #FFFFFF;
            font-weight: bold;
            background-color: #FF9900;
            height: 27px;
            border: none;
        }

        .table3 {
            border-spacing: 5px 5px;
            border-collapse: separate;
        }

        .p1 {
            margin-top: 80px;
        }

        .table4 {
            width: 970px;
        }

        .table4_tr {

            border-bottom: 2px #CCCCCC solid;
            border-top: 2px #CCCCCC solid;
            border-left: 1px #CCCCCC solid;
            border-right: 1px #CCCCCC solid;
        }

        .table4_tr2 {
            height: 70px;
        }

        .table4_tr1 {
            height: 50px;
            background-color: #FFF4D7;
        }
        .div1{
            width: 970px;
            border-top: 3px #EBCCA0 solid;
            height: 120px;
            text-align: center;
            background-color:#FFF4D7 ;
            margin: 0 auto;
        }
        .div1 div{
            margin-left: 60px;
            margin-top: 20px;
            width: 850px;
            font-size: 20px;
            border-bottom: 2px #EBCCA0 dashed;
        }
    </style>
</head>
<body>
<div class="layui-main" style="margin-top:10px;width: 1000px;position: relative;background-color: #AACDED">
    <p style="font-size: 15px;font-weight: bold;margin-left: 20px">填写核对订单信息</p>
    <div style="background-color: #FFFFFF;margin: 5px;padding: 10px;height: 800px">
        <table align="left" class="tableads">
            <tr>
                <td>收货人信息</td>
                <td></td>
            </tr>
            <tr>
                <td class="textRight"><span class="textRed">*</span>收货人姓名</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td class="textRight"><span class="textRed">*</span>地址</td>
                <td><input type="text" style="width: 400px"></td>
            </tr>
            <tr>
                <td class="textRight"><span class="textRed">*</span>电话号码</td>
                <td><input type="text"> <span>&nbsp;&nbsp;用于接收发货通知短信及送货请确认</span></td>
            </tr>
            <tr>
                <td class="textRight"><span class="textRed">*</span>电子邮箱</td>
                <td><input type="text"> <span>&nbsp;&nbsp;用来接收订单提醒邮件，便于您及时了解订单状况</span></td>
            </tr>
            <tr>
                <td class="textRight">邮政编码</td>
                <td><input type="text"> <span>&nbsp;&nbsp;有助于快速确认送货地址</span></td>
            </tr>
            <tr>
                <td colspan="2"><a href="#" style="color: blue;margin-left: 60px">送货常用地址</a></td>

            </tr>
            <tr>
                <td colspan="2"><input class="inputsub" type="submit" value="&nbsp;保存收货人信息&nbsp;"></td>

            </tr>
        </table>
        <div>
            <p>支付及配送方式</p>
            <table align="left" class="table3">
                <tr>
                    <td class="textRight">支付方式：</td>
                    <td>在线支付</td>
                </tr>
                <tr>
                    <td class="textRight">配送方式：</td>
                    <td>快递运输</td>
                </tr>
                <tr>
                    <td class="textRight">运费：</td>
                    <td>0.00 <span class="textRed">(免运费)</span></td>
                </tr>
            </table>

            <p class="p1"><span>商品清单</span><a href="#" style="color: #2789DE;margin-left: 700px">返回修改购物车</a></p>
            <table class="table4">
                <tr class="table4_tr1 table4_tr">
                    <td style="width: 40%">商品名称</td>
                    <td style="width: 20%">疯狂价</td>
                    <td style="width: 10%">返现</td>
                    <td style="width: 10%">小计(元)</td>
                    <td style="width: 10%">库存</td>
                    <td style="width: 10%">数量</td>
                </tr>
                <tr class="table4_tr table4_tr2">
                    <td>Cetaphil丝塔芙洁面乳 237ml 伦比的温和洁面新体验 所有肤质全部适用洁面新体验 所有肤质全部适用</td>
                    <td>￥39.67(0.7折)</td>
                    <td>￥0.00</td>
                    <td>￥345.65</td>
                    <td>100</td>
                    <td>1</td>
                </tr>

            </table>
            <div style="margin-top: 50px">
                <p style="font-weight: bold;font-size: 16px">结算信息</p>
                <div class="div1">
                    <div>商品金额：1224.445元+运费：0.00元-优惠券0.00元-礼品卡：0.00元-返现0.00元</div>
                    <p style="margin-right:20px;margin-top:10px;font-size: 25px;font-weight: bold;text-align: right">应付总金额：<span class="textRed" style="font-size: 25px;"> 26.78</span> 元</p>
                </div>
                <img src="images/submit.jpg" alt="" style="float: right;margin-top: 10px;margin-right: 20px">

            </div>
        </div>

    </div>
    <img src="${pageContext.request.contextPath}/images/step.jpg" width="1000px" style="margin-top: 10px" alt="">

</div>

</body>
</html>
