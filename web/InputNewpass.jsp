<%-- 
    Document   : InputNewpass
    Created on : Oct 17, 2017, 6:15:17 PM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit pass</title>
    </head>
    <body>
        <jsp:include page="Default.jsp"/>
        <br>
        <br>
        <br>
        <div style="border: 1px solid #ff0000; height: 70px; width: 500px; padding-top: 20px; padding-left: 20px; margin-left: 300px">
        <form action="EditPass" method="post">
            New pass: <input type="text" name="pass">
            <br/>
            <input type="submit" value="ok">
        </form>
    </div>
        <br>
        <br>
        <div style="height: auto; width: ">
               <jsp:include page="DefaultBot.jsp"></jsp:include>
        </div>
    </body>
</html>
