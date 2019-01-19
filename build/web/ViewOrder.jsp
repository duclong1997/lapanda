<%-- 
    Document   : ViewOrder
    Created on : Oct 14, 2017, 8:17:44 PM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Order</title>
    </head>
    <body>
        <div>
        <jsp:include page="Default.jsp"/>
        </div>
        <br/>
        <br/>
        <br/>
        <div>
        <c:choose>
            <c:when test="${empty applicationScope.order}">
                there are not order by customer
            </c:when>
            <c:otherwise>
                <table border="2">
                    <thead>
                        <tr>
                            <th>order id</th>
                            <th> name Product</th>
                            <th>name customer</th>
                            <th> phone number</th>
                            <th>address customer</th>
                            <th>time Order</th>
                            <th>quality</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="r" items="${applicationScope.order}">
                            <tr>
                                <td>${r.idOder}</td>
                                <td>${r.nameProduct}</td>
                                <td>${r.nameCustomer}</td>
                                <td>${r.phoneNumber}</td>
                                <td>${r.addressCustomer}</td>
                                <td>${r.timeOrder}</td>
                                <td>${r.quality}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </c:otherwise>
        </c:choose>
                <br>
                <br>
        </div>
                <div style="height: auto; width: auto; ">
                    <jsp:include page="DefaultBot.jsp"/>
                </div>
    </body>
</html>
