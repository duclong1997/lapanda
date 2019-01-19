<%-- 
    Document   : PaySuccess
    Created on : Oct 15, 2017, 9:12:25 PM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>payment success</title>
    </head>
    <body>
        <jsp:include page="Default.jsp"/>
        <h1>payment is success !</h1>
        <a href="HomePage.jsp"> back to source</a>
        <br>
        <br>
        <div>
            <jsp:include page="DefaultBot.jsp"></jsp:include>
        </div>
    </body>
</html>
