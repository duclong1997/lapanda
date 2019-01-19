<%-- 
    Document   : CreateProduct
    Created on : Oct 14, 2017, 10:34:32 AM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Product</title>
    </head>
    <body>
        <div>
        <jsp:include page="Default.jsp"/>
        </div>
        <div>
        <div style="padding-top: 100px">
        <form action="CreateProduct" method="post">
            name Product:<input type="text" name="namePro">
            <br/>
            PRICE OF product: <input type="text" name="price">
            <br/>
            image of product: <input type="file" name="image">
            <br/>
            type of product: <select name="type">
                <option  value="phone">phone</option>
                <option value="laptop">laptop</option>
                <option value="screen">screen</option>
                <option  value="electronic components">electronic components</option>
                <option  value="battery and charger">battery and charger</option>
                <option  value="key board">key board</option>
                <option  value="printer">printer</option>
                <option  value="Phone case">Phone case</option>
                <option  value="Device save">Device save</option>
            </select>
            <br/>
            note for product: <input type="text" name="note">
            <br/>
            <input type="submit" value="ok">
        </form>
        </div>
        </div>
        <div style="height: auto; width: auto">
            <jsp:include page="DefaultBot.jsp"></jsp:include>
        </div>
    </body>
</html>
