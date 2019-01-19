<%-- 
    Document   : ViewProductOfCustomer
    Created on : Oct 15, 2017, 5:55:37 PM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view product of customer</title>
    </head>
    <body>
        <jsp:include page="Default.jsp"/>
        <jsp:useBean id="iteam" class="com.biz.ArrayIteam" scope="session"/>
        <h1> number of product ${iteam.iteam.size()}</h1>
 
<!--        create div chua toan bo san pham duoc mau-->
<div style="width: 70%;margin-left: 100px">
    <div style="width: 10%; color: #cc0033; background: #33ff33; float: left; text-align: center; border-top-left-radius: 20px; bor">id product</div>
    <div style="width: 40%; color: #000000; background: #ffff00;float: left; text-align: center">name of product</div>
    <div style="width: 20%; color: #ffff00; background: #00cccc;float: left; text-align: center">price of product</div>
    <div style="width: 20%; color: #ffff00; background: #990099;float: left; text-align: center">quality of product</div>
    <div style="width: 10%; color: #ffff00; background: #ff3333; text-align: center;float: left; border-top-right-radius: 20px">Option</div>
</div>

<!--    show inform san pham-->

<div style="width: 70%;margin-left: 100px">
     <c:forEach var="m" items="${iteam.iteam}">
         <div style="width: 10%;height: 22px; color: #cc0033; background: #33ff33; float: left; text-align: center; border-bottom: 1px solid #ff0033; border-top:1px solid #ff0033">${m.idIteam}</div>
    <div style="width: 40%;height: 22px; color: #000000; background: #ffff00;float: left; text-align: center;border-bottom: 1px solid #ff0033; border-top: 1px solid #ff0033">${m.nameIteam}</div>
    <div style="width: 20%; ;height: 22px;color: #ffff00; background: #00cccc;float: left; text-align: center;border-bottom: 1px solid #ff0033; border-top: 1px solid #ff0033">${m.total}</div>
    <div style="width: 20%;;height: 22px; color: #ffff00; background: #990099;float: left; text-align: center;border-bottom: 1px solid #ff0033; border-top: 1px solid #ff0033">${m.qualityIteam}</div>
    <div style="width: 10%; color: #ffff00; background: #ff3333; text-align: center;float: left"> <a href="DeleteIteam?id=${m.idIteam}" ><button type="button">delete</button></a></div>
     </c:forEach>
</div>
<br>
<br>
<br>
<h1> tong so tien la ${iteam.sum} VND</h1>
<br>
<h1> click to buy to continue: <a href="HomePage.jsp"><button type="button">here</button></a></h1>
<c:if test="${iteam.iteam.size()!=0}">
<h1> click to pay the product: <a href="Payment.jsp"><button type="button">here</button></a></h1>
</c:if>
        <div style="height: auto; width:  auto; margin-top: 500px">
            <jsp:include page="DefaultBot.jsp" />
        </div>
    </body>
</html>
