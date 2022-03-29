<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: Jeffery
  Date: 2021/4/25
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<html>
<head>
    <title>购物商城-商品详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">

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

    </style>
</head>
<body>

<div class="layui-main" style="width: 1000px;height: 700px;position: relative">
    <div style="width: 230px;height: 700px;background-color: #F6A65B;position: absolute;left: 0px;top: 0px">
        <h2 style="font-weight: bold;color: #8D4800;margin-left: 10px;margin-top: 5px">物品分类</h2>
        <div style="background-color: #FFFFFF;width: 224px;height: 670px;margin: 3px;clear:both">

            <u1 class="ul2">

                <li>
                    <a href="${pageContext.request.contextPath}/findArticles">.首页</a><span
                        style="float: right;color: #F7DDA4">&gt;</span>
                </li>
                <c:forEach var="litype" items="${listTypes}" varStatus="con">
                    <li>
                        <a href="${pageContext.request.contextPath}/findByType?articleType=${litype.code}">.${litype.name}</a><span
                            style="float: right;color: #F7DDA4">&gt;</span>
                    </li>
                </c:forEach>


            </u1>

        </div>
    </div>
    <div style="width: 770px;height: 700px;position: absolute;top:0px;left: 230px">
        <!--右边上-->
        <p style="font-size: 19px;margin-left: 40px;margin-top: 15px">
            ${ecArticle.title}
        </p>
        <div style="position: relative">
            <div style="text-align:center;margin-top:20px;margin-left:10px;width: 300px;height: 300px;border: #cccccc 2px solid">
                <img src="${pageContext.request.contextPath}/images/article/${ecArticle.image}"
                     style="width: 300px;height: 300px">
                <p style="margin-top: 20px">评分:&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #F6AB01;font-size: 25px">★★★★★</span>&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="#" style="color: blue">(已有200人评价)</a></p>
                <p style="margin-top:5px"><a href="#" style="color: blue">该商品支持全国购买</a></p>
            </div>
            <div style="text-align:left;position: absolute;left:350px;top:0px;border-top: 2px #CCCCCC solid">
                <table style="border-spacing: 0px 10px;border-collapse:separate;">
                    <tr>
                        <td width="80px">供应商：</td>
                        <td><span style="font-weight: bold">${ecArticle.supplier}</span></td>
                    </tr>
                    <tr>
                        <td>出产地：</td>
                        <td>${ecArticle.locality}</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>定价：</td>
                        <td>${ecArticle.price}</td>
                    </tr>
                    <tr style="color: #FF0000">
                        <td>疯狂价：</td>
                        <td>￥${ecArticle.price2}


                            (${ecArticle.discount}折)
                        </td>
                    </tr>
                    <tr>
                        <td>库存：</td>
                        <td>${ecArticle.storage}&nbsp;&nbsp;下单后立即发货</td>
                    </tr>
                    <tr>
                        <td>促销信息：</td>
                        <td style="color: #FF0000">该商品参加满减活动，购买活动商品，每满300元，可减100元现金</td>
                    </tr>

                </table>
                <div style="width: 500px;margin-top: 20px;border: #EED97C 2px solid ">
                    <div style="border-bottom:#EED97C 1px solid ;background-color: #FFFCEB;height: 50px;line-height: 50px;padding-left: 20px">
                        我要买：<input type="text" value="-" onclick="addOrSubNumber('-')"
                                   style="width: 20px;text-align: center;cursor: pointer;"
                                   readonly="readonly">&nbsp;&nbsp;&nbsp;
                        <input name="buynumber" id="buynumber" type="number" value="1" onBlur="ischeckNum()"
                               style="width: 50px;text-align: center">&nbsp;&nbsp;&nbsp;<input
                            type="text" value="+" onclick="addOrSubNumber('+')"
                            style="text-align:center;width: 20px;cursor: pointer;"
                            readonly="readonly">

                    </div>
                    <div style="background-color: #FFFCEB;height: 70px;padding-left: 20px">
                        <a href="javascript:void(0)" id="addBuy" onclick="addArticleCar(${ecArticle.id},${ecUser.id})"><img src="${pageContext.request.contextPath}/images/add_car.jpg" alt=""
                                         style="margin-top: 15px"></a>
                        <a href="#"><img src="${pageContext.request.contextPath}/images/btn_attention.jpg" alt=""
                                         style="margin-top: 15px;margin-left: 20px"></a>

                    </div>
                </div>
            </div>
        </div>

    </div>

    <img src="${pageContext.request.contextPath}/images/step.jpg" style="margin-top: 700px" alt="">

</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
    //1.失去焦点事件的方法，以下用的都是jquery语法
    function ischeckNum() {
        //获得输入框中的内容
        var num = $("#buynumber").val();
        //判断内容的值：判断输入框中的内容：如果不是数字，或者小于1或者大于99
        if (isNaN(num) || num < 1 || num > 99) {
            //将输入框中的内容设置为1
            $("#buynumber").val("1");
            return false;
        }
    }

    //2.+和减的事件处理
    function addOrSubNumber(value) {
        //获得number的值
        var number = $("#buynumber").val();
        //减好操作
        if (number > 1 && value == "-") {
            $("#buynumber").val(parseInt(number) - 1);
        }
        //加好操作
        if (number < 100 && value == "+") {
            $("#buynumber").val(parseInt(number) + 1);
        }


    }
    //3.添加购物车按钮
    function addArticleCar(articleId,ecUserId){
        //获得想要获取的数据,购买的数量
        var buyNumber = $("#buynumber").val();

        $("#addBuy").attr("href","${pageContext.request.contextPath}/addShopCar?articleid="+articleId+"&buynum="+buyNumber+"&userid="+ecUserId);
    }

</script>


</body>
</html>
