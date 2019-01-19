<%-- 
    Document   : ChangePass
    Created on : Oct 17, 2017, 4:06:48 PM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lose password</title>
    </head>
    <body>
        <div style="height: auto; width: auto; margin: auto">
        <jsp:include page="Default.jsp"/>
        </div>
        <br>
        <br>
        
        <div style="height: auto; width: 500px; border: #ff3333 solid 1px ; margin-left: 200px; padding-left: 20px"> 
        <form method="post" action="ExchangePass">
             <h1> ${sessionScope.losePass}</h1>
            Enter email: <input type="email"  name="mail">
            <br/>
            <input type="submit" value="ok">
        </form>
            <br>
        </div>
              <br>
            <br>
      
                <jsp:include page="DefaultBot.jsp" ></jsp:include>
       
    </body>
</html>
