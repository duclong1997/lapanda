<%-- 
    Document   : Payment
    Created on : Oct 15, 2017, 8:34:41 PM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment product</title>
        <style>
              #main{
              height: 300px; width: 900px;
                border: 1px #999999 solid;
                margin-top: 100px;
                margin-left: 100px;
                background: #ffffff;
                z-index: -1;
                margin-bottom: 100px
            }
                  .button {
                background-color: white; /* Green */
               border: 2px solid #ff6600;
                color: white;
                height: 30px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 12px;
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
            #circle {
                width: 30px;
                height: 30px;
                background: #999999;
                -moz-border-radius: 50px;
                -webkit-border-radius: 50px;
                border-radius: 50px;

            }
        </style>
    </head>
    <body  style="background: #f1f1f1; font-family: sans-serif"> 
        <jsp:include page="Default.jsp" />
        <div id="main">
            <div style="height: 50px; width: 800px; border-bottom:  #cccccc 2px solid;border-top:1px #ffffff solid;float: top; margin-left: 50px; position: absolute">
                 <h3 style="text-align: left; font-family: sans-serif; margin-top: 15px">Thông tin khách hàng</h3>
                 </div>  
            <div style="width: auto;height: auto;position: absolute; margin-top: 50px; margin-left: 50px">
                <h5>* Vui lòng nhập thông tin</h5>
            
            </div>    
        <form method="post"  action="PaymentProduct">
            <table style="width: auto;height: auto;  margin-left: 100px; margin-top: 120px">
                <tr>
                    <td></td>
                    <td>${sessionScope.error1}</td>
                </tr>
                <tr>
                    <td style="font-size: 12px;">Họ và tên * </td>
                    <td><input style="width:  300px;" type="text" name="nameCustomer"></td>
                </tr>
                <tr>
                    <td style="font-size: 12px;">Số điện thoại * </td>
                    <td><input style="width:  300px;" type="number" name="phone"></td>
                </tr>
                <tr>
                    <td style="font-size: 12px;">Địa chỉ * </td>
                    <td><input style="width:  300px;" type="text" name="address"></td>
                </tr>
                <tr><td></td>
                    <td><input class="button button1" type="submit" value="CHẤP NHẬN"></td>
            </tr>
            </table>
        </form>
        </div>
        <jsp:include page="DefaultBot.jsp" />
    </body>
</html>
