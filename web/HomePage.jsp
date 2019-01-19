<%-- 
    Document   : HomePage
    Created on : Oct 12, 2017, 7:36:39 PM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/Homepage.css" type="text/css"  rel="stylesheet" media="all">
        <link rel="stylesheet" href="css/Min.css"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/Min.js" ></script>
        <script src="js/Bootstrap.js"></script>
        <title>Home Page</title> 
    </head>
    <body>

        <jsp:include page="Default.jsp"/>

      
      <br>
            <br/>
            <div style="background: #66ff66; border: #ffff33 solid 2px; border-radius: 20px; width: 400px"> 
            <h1 style=" color: #ff0000"> New product is updated</h1>
            </div>
            <br>
            <div class="container">

                <div id="myCarousel" class="carousel slide" data-ride="carousel">
<!--                     Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>

<!--                     Wrapper for slides -->
                    <div class="carousel-inner">

                        <div class="item active">
                            <img src="image/CARDHISRX470.png" alt="Los Angeles" style="width:100%; height: 500px">
                            <div class="carousel-caption">
                                <h3  style="color: #ff0033">CARD HIS RX 470</h3>
                                <p  style="color: #ff0033"> 6.175.500 VND</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="image/MAINBIOSTAR.jpg" alt="Chicago" style="width:100%;height: 500px">
                            <div class="carousel-caption">
                                <h3  style="color: #ff0033">main biostar</h3>
                                <p  style="color: #ff0033">3.490.000 VND</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="image/cardHIS570.jpg" alt="New York" style="width:100%; height: 500px">
                            <div class="carousel-caption">
                                <h3 style="color: #ff0033">card his 570</h3>
                                <p  style="color: #ff0033">7.490.000 VND </p>
                            </div>
                        </div>


                    </div>
<!--                     Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left">
                            <img src="image/option/previous.png"> 
                        </span>
                        <span class="sr-only"> previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right">
                            <img src="image/option/next.png"> 
                        </span>
                        <span class="sr-only">next</span>
                    </a>
                </div>
            </div>
            <br>
            <br>
            <div style="float: left; width: 400px; background: #99ffff; border: 2px solid #666666; border-radius: 20px"> 
                <h1 style="color: #0000cc"> Product of week  </h1>
            </div>
            <br>
            <br>
            <br>
       
        <div style=" float: left ; height: 400px; width: 1200px; margin-top: 50px ;margin-left: 100px">
             <jsp:useBean id="t" class="com.biz.ArrayProduct" scope="session"/>
            <c:forEach var="r" items="${t.select()}" begin="1" end="4">
                <div class="cover-card" style="height: 400px; width: 250px; float: left; margin-left: 20px;">
                    <a href="ControlInformIteam?idCus=${r.idProduct}" style="a">
                        <p>
                              ${r.nameProduct}
                            <br>
                            ${r.price}00.000 VND
                            <img src="${r.link}" style="height: 400px; width: 250px; ">
                        </p>
                        
                    </a>
                </div>
            </c:forEach>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div style="float: left;margin-top: 100px;margin-bottom: 100px; border: 2px solid #ff0000; border-radius: 30px; width: 650px; background: #ffff00"> 
            <h1><a href="SearchType?search=<%="electronic components"%>&page=1&pageSize=3">Electronic components of product </a></h1>
        </div>
        <br>
        <br>
        <br>
        <div  class="electronic">
            <c:forEach var="r" items="${t.select()}" begin="6" end="8">
                <div class="child-electronic">
                    <a href="ControlInformIteam?idCus=${r.idProduct}" >
                        <img src="${r.link}" style=" height: 398px;width: 435px">
                        <p>
                            ${r.nameProduct}
                            <br>
                            ${r.price}00.000 VND
                        </p>

                    </a>
                </div>
            </c:forEach>
        </div>
        <div style=" height: 200px; width: 100%; margin-top: 1200px; background: #003333; padding-top: 30px; ">
           <div  style="background: #ff339; float: left; margin-left: 50px">
                <p style="color: #ff9900"> <img src="image/option/panda.png" style="height: 20px; width: 20px"> LaPanDa</p>
                <p style="font-size: 12px; color: #ff9900">hàng việt nam chất lượng cao, giáo thành vừa và rẻ</p>
           </div>
           <div class="backup" >
               <p> <a href="SearchType?search=<%="phone"%>&page=1&pageSize=3">Phone </a></p>
               <p> <a href="SearchType?search=<%="laptop"%>&page=1&pageSize=3">laptop </a>   </p>
               <p> <a href="SearchType?search=<%="screen"%>&page=1&pageSize=3">screen </a></p>
               <p> <a href="SearchType?search=<%="electronic components"%>&page=1&pageSize=3">Linh kiện điện tử </a></p>
               <p> <a href="SearchType?search=<%="Phone case"%>&page=1&pageSize=3">Vỏ điện thoại</a></p>
             
           </div>
           <div class="backup" >
               <p> <a href="SearchType?search=<%="printer"%>">Máy in</a></p>
               <p> <a href="SearchType?search=<%="battery and charger"%>">Pin và bộ sạc</a></p>
               <p> <a href="SearchType?search=<%="key board"%>">Bàn phím </a></p>
                <p> <a href="SearchType?search=<%="Device save"%>">Device save</a></p>
           </div>

           <div class="backup" >
               <p>Liên hệ hỗ trợ</p>
               <p>Email:Lapanda@gmail.com</p>
               <p> number phone: 01649982920</p>
               <p>Copyright ©2017 LaPanDa.com</p>
               <p>All Rights Reserved.</p>
           </div>
           <div style="float: left; width: auto; margin-left: 50px">
               <a href="#" ><img src="image/option/en_badge_web_generic.png" style="height: 50px; width: 100px"> </a>
               <br>
                  <a href="#" > <img src="image/option/appstore.png" style="height: 40px; width: 95px"> </a>
            </div>
        </div>
    </body>
</html>
