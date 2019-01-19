<%-- 
    Document   : DefaultBot
    Created on : Oct 25, 2017, 8:12:33 AM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .backup{
                height:242px;
                width: 15%;
                margin-left: 30px;
                float: left;
             
            }
            .backup > p{
                font: 4px;
                color: #ff9900  ;
            }
        </style>
    </head>
    <body style="font-family: sans-serif">

        <div style="height: 220px; width: 100%; background: #183544; border-top: 5px solid;border-top-color: #ffff00; padding-top: 50px; float: bottom;  ">
            <div  style="background: #ff339; float: left; margin-left: 50px">
                <p style="color: #ff9900"> <img src="image/option/panda.png" style="height: 20px; width: 20px"> LaPanDa</p>
                <p style="font-size: 12px; color: #ff9900">hàng việt nam chất lượng cao, giáo thành vừa và rẻ</p>
            </div>
            <div class="backup" >
                <p> <a href="SearchType?search=<%="phone"%>" style="font-size: 12px">Phone </a></p>
                <p> <a href="SearchType?search=<%="laptop"%>" style="font-size: 12px">laptop </a></p>
                <p> <a href="SearchType?search=<%="screen"%>" style="font-size: 12px">screen</a></p>
                <p> <a href="SearchType?search=<%="electronic components"%> " style="font-size: 12px">Linh kiện điện tử </a></p>
                <p>  <a href="SearchType?search=<%="battery and charger"%>" style="font-size: 12px">Pin và bộ sạc </a></p>
            </div>
            <div class="backup" >

                <p> <a href="SearchType?search=<%="printer"%>" style="font-size: 12px">Máy in</a></p>
                <p><a href="SearchType?search=<%="Phone case"%>" style="font-size: 12px">Vỏ điện thoại</a></p>
                <p>  <a href="SearchType?search=<%="Device save"%>" style="font-size: 12px">Device save</a></p>
                <p> <a href="SearchType?search=<%="key board"%>" style="font-size: 12px">Bàn phím</a></p>
            </div>
            <div class="backup" >
                <p style="font-size: 12px">Liên hệ hỗ trợ</p>
                <p style="font-size: 12px">Email:Lapanda@gmail.com</p>
                <p style="font-size: 12px"> number phone: 01649982920</p>
                <p style="font-size: 12px">Copyright ©2017 LaPanDa.com</p>
                <p style="font-size: 12px">All Rights Reserved.</p>
            </div>
              <div style="float: left; width: auto; padding-left:  100px; padding-top: 20px; margin-top: 20px">
                  <a href="#" ><img src="image/option/en_badge_web_generic.png" style="height: 50px; width: 100px"> </a>
                  <br>
                  <a href="#" > <img src="image/option/appstore.png" style="height: 40px; width: 95px"> </a>
            </div>
        </div>
    </body>
</html>