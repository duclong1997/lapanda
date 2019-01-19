<%-- 
    Document   : InformProduct
    Created on : Oct 15, 2017, 12:39:20 AM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Imform of product</title>
        <script src="js/ImformProduct.js"></script>
        <script src='js/Jquery.js'></script>
  
        <style>
               #main{
                width: 1000px;
                height: 567.3px;
                border: 1px #999999 solid;
                margin-top: 100px;
                margin-left: 100px;
                background: #ffffff;
                z-index: -1;
            }
          
            .imgPro{
                
                height: 300px; 
                width: 200px; 
                text-align: center;
                margin-top: 110px;
                float: left;
                margin-left: 120px;
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
            .infoPro{
                width: 500px;
                height: 400px;
                border-left: 1px #999999 solid; 
                position: absolute;
                margin-left: 500px;
                margin-top: 80px;
            }
                
        </style>
        	<script>
		$(document).ready(function(){
			$('#ex1').zoom();
		});
	</script>
    </head>
    <body style="background: #f1f1f1; font-family: sans-serif">
      
        <jsp:include page="Default.jsp"/>
        
<!--        <-- create appilication to add aray list-->

        <jsp:useBean id="iteam" class="com.biz.ArrayIteam" scope="session"/>

        <c:forEach var="r" items="${applicationScope.inform}">
            <div id="main"> 
                <div style="height: 50px; width: 895px; border-bottom:  #cccccc 2px solid;border-top:1px #ffffff solid;float: top; margin-left: 50px;">
                 <h3 style="text-align: left; font-family: sans-serif; margin-top: 15px"> khách hàng đã chọn sản phẩm</h3>
                 </div>   
        

                <span class='zoom' id='ex1'>
                    <img class="imgPro" src="${r.link}" alt='Daisy on the Ohoopee'/>

                </span>
            <div class="infoPro">
                <div style="height: 40px ; width: 200px; float: left; position: absolute;z-index: 1;">
                    <h5 style="text-align: center;">* Thông tin sản phẩm</h5>
                </div>
                 <form action="ControlViewCustomer" method="post">
                <table style="margin-top: 70px;margin-left: 45px;" >
                   
                        <tr>
                            <td style="font-size: 12px;">Mã sản phẩm * </td>
                            <td><input style="width:  300px" type="text" value="${r.idProduct}" name="id" readonly="" ></td>
                        </tr>
                         <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                        <tr>
                        <td style="font-size: 12px;">Tên sản phẩm * </td>
                        <td><input style="width:  300px" type="text" value="${r.nameProduct}" name="name" readonly="" ></td>
                        </tr>
                         <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                        <tr>
                            <td style="font-size: 12px;">Giá sản phẩm * </td>
                            <td><input style="width:  300px" type="text" value="${r.price}" name="price" readonly="" ></td>
                        </tr>
                         <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                        <tr>
                            <td style="font-size: 12px;">Loại sản phẩm * </td>
                            <td><input style="width:  300px" type="text" value="${r.type}" name="type" readonly=""></td>
                        </tr>
                         <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
               
                        <tr>
                            <td style="font-size: 12px;">Thông tin sản phẩm * </td>
                            <td><textarea name="note" rows="4" cols="40" disabled="disabled" readonly="">${r.note}
                                </textarea> </td>
                        </tr>
                         <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                        <tr>
                            <td style="font-size: 12px;">Số lượng * </td>
                            <td><input style="width:  300px" type="number" name="quality" value="1" ></td>
                        <tr>
                             <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <td></td>
                 <td><input class="button button1" type="submit" value="CHẤP NHẬN"></td>
                 </tr>
                </table>
                 </form>

            </div>
            </div> 
        </c:forEach>
        <br>
        <br>
        <br>
        <div style="height: auto; width: auto ">
            <jsp:include page="DefaultBot.jsp"></jsp:include>
        </div>
    </body>
</html>
