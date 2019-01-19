<%-- 
    Document   : Default
    Created on : Oct 12, 2017, 9:47:05 PM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div{
                display: block;
            }
            .header{
                font-family: Helvetica,Arial,sans-serif;
                font-weight: 400;
                font-size: 12px;
                line-height: 1.2;
                height: 121px;
                width: 100%;
                background: #183544;
            }
            .header .header-1{
                position: relative;
                background: #11252F;
                min-width: 1006px;
                height: 30px;
                transition: height .25s linear,zIndex 0s linear .25s;
                z-index: 3;
                border-bottom: 1px azure solid;
            }
                .header .header-2{
                position: relative;
                background: #183544;
                min-width: 1106px;
                height: 60px;
                transition: height .25s linear,zIndex 0s linear .25s;
                z-index: 2;
                
            }
               .header .header-3{
                position: relative;
                background: #11252F;
                min-width: 1006px;
                height: 31px;
                transition: height .25s linear,zIndex 0s linear .25s;
               
                border-top: 1px azure solid;
            }
            #menu-top-bar ul{
                background: #11252F;
                list-style-type: none;
                text-align: center;
                float: right;
            }
            #menu-top-bar li{
                color: #ffffff;
                display: inline-block;
                width: 200px;
                height: 15px;
                line-height: 15px;
                margin-left: -5px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                 font-style: normal;
                font-size: 12px;

            }

            #menu-top-bar li:hover {

                color: #999999;
            }
            .searchform {

                margin-left:  150px;

                margin-top: 20px;

                height:40px;

                width:850px;
                border-radius: 9px; 

            }

            .searchform input[type=text]

            {

                width:500px;

                height:28px;

                border:0px;

                background:#ffffff;

                float: left; 

                margin:0px;padding:3px;
                margin-top: 3px;
                margin-left: 4px;
                border-bottom-left-radius: 6px;
                border-top-left-radius: 6px;

            }

            .searchform input[type=submit]

            {

                border:#ff6600 2px solid;

                float:left;

                margin:2px 2px 2px 2px;

                height:34.5px;
                width: 78px;
                padding-top:1px;
               
                
                border-bottom-right-radius: 6px;
                border-top-right-radius: 6px;

            }
            a {
                text-decoration: #ffffff; 
                color: #ffffff;
               
            }
            a:hover {
                color: #999999;
            }
            
            .button {
                background-color: white; /* Green */
               border: 2px solid #ff6600;
                color: white;
                
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer;
            }

            .button1 {
                background-color: #ff6600; 
                color: white; 
                
            }

            .button1:hover {
                background-color: white;
                color: #ff6600;
                border: 2px solid #ff6600;
            }
            .loadapp{
                color: #ff6600;
            }
            .loadapp a {
                text-decoration: none;
                color: #ff6600;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }
            .loadapp a:hover{
                color: #999999;
            }
               .sold{
                color: aqua;
            }
            .sold a {
                text-decoration: none;
                color: aqua;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
            }
            .sold a:hover{
                color: #999999;
            }
            
            #menu-bot-bar ul{
                list-style-type: none;
                background: #11252F;
                text-align: center;
                
                width:auto;
                padding-left: 0;
                padding-right: 0;
                margin-top: 1px;
                position:absolute;
                margin-right: 10px;
                margin-left: 30px;
                
            }
            #menu-bot-bar ul li{
                 color: #ffffff;
                display: inline-block;
                width: 140px;
                height: 30px;
                line-height: 30px;
               
            }
            #menu-bot-bar ul li a{
                color: #ffffff;
                text-decoration: none;
                display: block;

           transition-duration: 0.1s;
              /*transition-delay: 0.1s;*/
            }
            #menu-bot-bar ul li a:hover{
                background: #ffffff;
                color: #11252F;
                border-bottom: #ff6600 double 2px;
                
                /*                border-left: #ff6600 1px solid;
                                border-right: #ff6600 1px solid;*/
            }
            .w3-badge,.w3-tag{
               
                background-color: #ff3333;
                color: #99ffff;
                display:inline-block;
                padding-left:9px;
                padding-right:9px;
                padding-bottom: 4px;
                padding-top: 4px;
                text-align:center;
            }
            .w3-badge{
                border-radius:50%
            }
        </style>
    </head>
    <body>

        <div class="header">
            <div class="header header-1">
                <div id="menu-top-bar">
                    <ul>
                        <li ><a href="#" class="loadapp">TẢI APP LAPANDA</a></li>
                        <li ><a href="#" class="sold">BÁN HÀNG CÙNG LAPANDA</a></li>
                        <li><a href="#">CHĂM SÓC KHÁCH HÀNG</a></li>
                        <li><a href="#">KIỆM ĐƠN HÀNG</a></li>
                        <li> <c:if test="${empty sessionScope.login}">
                                <a href="LoginUser.jsp">ĐĂNG NHẬP</a>
                            </c:if>
                            <c:if test="${sessionScope.login !=null}">
                                <a href="PageUser" > login as -${sessionScope.login}-</a> <a href="Logout">ĐĂNG XUẤT</a>
                            </c:if>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="header header-2">

                <div style="height: 60px; width: 1000px;">
                    <!--          lapanda -->
                    <div style="float: left; height: 60px; width: 150px;margin-left: 70px;margin-top: 8px">
                        <a href="HomePage.jsp"><img src="image/option/panda.png" style="height: 30px; width: 30px"></a>
                        <a href="HomePage.jsp" style="font-size: 20px; text-align: center; color: #ff6600;">LAPANDA</a>
                    </div>
                    <!--                 input inform -->
                    <div style="height: 40px; width: 700px;">
                        <form class="searchform" action="SearchProduct" method="get"> 

                            <input style="overflow: hidden" type="text" name="search" placeholder="search....">  
                            
                            <input class="button button1" type="submit" value="GO">
                            <a href="ViewProductOfCustomer.jsp" style="padding-left: 20px"><img src="image/option/cart2.png" style="height: 40px; width: 40px"></a>
                             <jsp:useBean id="iteam" class="com.biz.ArrayIteam" scope="session"/>
       
                            <span class="w3-badge" >${iteam.iteam.size()}</span>
                        </form>
                    </div>
                </div>
            </div>    
            <div class="header header-3">
                <div id="menu-bot-bar">
                    <ul>
                         <li><a href="SearchType?search=<%="phone"%>&page=1&pageSize=3">Điện thoại</a></li>
                        <li><a href="SearchType?search=<%="laptop"%>&page=1&pageSize=3">laptop</a></li> 
                        <li><a href="SearchType?search=<%="screen"%>&page=1&pageSize=3">màn hình</a></li>
                        <li><a href="SearchType?search=<%="electronic components"%>&page=1&pageSize=3">Linh kiện điện tử</a></li>
                        <li><a href="SearchType?search=<%="battery and charger"%>&page=1&pageSize=3">Pin và bộ sạc</a></li>
                        <li><a href="SearchType?search=<%="key board"%>&page=1&pageSize=3">Bàn phím</a></li>
                        <li><a href="SearchType?search=<%="printer"%>&page=1&pageSize=3">Máy in</a></li>
                        <li><a href="SearchType?search=<%="Phone case"%>&page=1&pageSize=3">Vỏ điện thoại</a></li>
                        <li><a href="SearchType?search=<%="Device save"%>&page=1&pageSize=3">Device save</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </body>

</html>
