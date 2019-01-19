<%-- 
    Document   : PageUser
    Created on : Oct 12, 2017, 10:33:52 PM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/Min.css">
        <script src="js/Min.js"></script>
        <link rel="stylesheet" href="css/PageUser.css">
        <script src="js/Bootstrap.js"></script>
        <title>page of user</title>
    </head>
    <body>
        <jsp:include page="Default.jsp"/>
        <br> 
        <br>
        <div class="btn-group btn-group-lg">
            <a href="HomePage.jsp"> <button type="button" class="btn btn-primary">Home page</button></a>
            <a href="OrderByCustomer"> <button type="button" class="btn btn-primary"> view order</button></a>
            <a href="CreateProduct.jsp"> <button type="button" class="btn btn-primary">  create product</button></a>
        </div>

        <br>
        <br>
        <br>
<!--        codde here-->
<div>
    <div style="float: left; width: 20%; height: auto;border-top-left-radius: 20px;border-top-right-radius: 20px;">
        <ul class="ul1">
            <li class="li1" style="   border-top-left-radius: 20px;border-top-right-radius: 20px;"><a>quan li tai khoan</a>
                <ul class="ul2">
                    <li class="li2"><a>Thay đổi mật khẩu</a></li>
                    <li  class="li2"><a>Đổi tên</a></li>
                    <li  class="li2"><a>Xóa mặt hàng</a></li>
                    <li  class="li2"><a>Thay đổi mặt hàng</a></li>
                    <li  class="li2"><a>Thay đổi thông tin người dùng</a></li>
                </ul></li>
            <li class="li1"> <a>Mặt hàng</a>
                <ul class="ul2">
                    <li class="li2"><a>Điện thọai</a></li>
                    <li  class="li2"><a>Lap top</a></li>
                    <li  class="li2"><a>Màn hình</a></li>
                    <li  class="li2"><a>Linh Kiện dien tu</a></li>
                    <li  class="li2"><a>Pin va bộ sạc</a></li>
                    <li  class="li2"><a>Bàn phím</a></li>
                    <li  class="li2"><a>Máy in</a></li>
                    <li  class="li2"><a>Vỏ điện thoại</a></li>
                    <li  class="li2"><a>Device save</a>
                    </li>
                </ul>
            </li>
            <li class="li1"><a>Thông tin mặt hàng</a>
                <ul class="ul2">
                    <li class="li2"><a>xóa mặt hàng</a></li>
                    <li  class="li2"><a>Sửa thông tim mặt hàng</a></li>
                </ul></li>
        </ul>
    </div>
    <div style="float: left; width: 75%; height: auto; margin-left: 50px; border-top-left-radius: 20px; border-top-right-radius: 20px">
        <div style="width: 10%; text-align: center; float: left; height: 50px; border: 1px solid #ff3333; border-top-left-radius: 20px">name of product</div>
                <div style="width: 20%; float: left; height: 50px; border: 1px solid #ff3333 ">image</div>
                <div style=" width: 10%; float: left; height: 50px; border: 1px solid #ff3333; text-align: center">price</div>
                <div style="width: 60%; float: left ; height: 50px; border: 1px solid #ff3333; text-align: center; border-top-right-radius: 20px">note</div>
        <c:forEach var="r" items="${applicationScope.producUser}" >
            
                <div style="width: 10%; text-align: center; float: left; height: 200px; border: 1px solid #ff3333; ">${r.nameProduct}</div>
                <div style="width: 20%; float: left; height: 200px; border: 1px solid #ff3333 "><img src="${r.link}" style="height: 100%; width:100%"></div>
                <div style=" width: 10%; float: left; height: 200px; border: 1px solid #ff3333; text-align: center">${r.price}</div>
                <div style="width: 60%; float: left ; height: 200px; border: 1px solid #ff3333">${r.note}</div>
      
        </c:forEach>
    </div>
</div>

       <!--food-->
        <div style="height: auto; width: 100%; margin: auto ; padding-top: 1800px  ">
            <jsp:include page="DefaultBot.jsp" />
        </div>
    </body>
</html>
