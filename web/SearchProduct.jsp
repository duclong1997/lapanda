<%-- 
    Document   : Search
    Created on : Oct 12, 2017, 8:45:01 PM
    Author     : longnd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" href="css/Seacher.css"> 
    </head>
    <body>
        <jsp:include page="Default.jsp"></jsp:include>
        <div style="padding-top: 100px;width: 100%">
    <c:choose>
        <c:when test="${empty applicationScope.searcher}" >
            <div style="height: 100%; text-align: center">
            <b style="text-align: center"> <c:out value="Not found the product you need">
                </b>
            </c:out>   
            <br>
            <br>
            </div>
               <div style="height: auto; width:  auto; margin-top: 210px">
        <jsp:include page="DefaultBot.jsp"/>
        </div>
        </c:when>
        <c:otherwise>
            <div  id="sear">
                <c:forEach var="r" items="${applicationScope.searcher}">
                    <div style=" height: 350px; width: 225px; float:left; background-color: #ff3300; margin-top: 10px; margin-left: 5px">
                        <a href="ControlInformIteam?idCus=${r.idProduct}" > <img src="${r.link}" style="height: 300px; width: 225px">
                        ${r.nameProduct}
                        <br>
                        ${r.price}00.000  VND
                          </a>
                    </div>
                         
                </c:forEach>
            </div>
            <div style="width: 100%; height: auto; float: left; text-align: center;">
                <h1> <<
                <jsp:useBean id="bb" class="com.biz.ArrayProduct" scope="page" >
                        <jsp:setProperty name="bb" property="search"  value="${sessionScope.valueSearch}"/>
                    </jsp:useBean>
                      <c:forEach var="i" begin="1" end="${bb.totalPage}" >
                          
                    <c:if test="${page==i}">
                        <b style="color: #000000">${i}</b>
                    </c:if>
                    <c:if test="${i!=page}">
                   
                        <a href="SearchProduct1?search=${valueType}&page=${i}&pageSize=3" style="color: #ff0033">${i}  </a>
                    </c:if>
                </c:forEach>
                     >> </h1>
            </div>
              <div style="height: auto; width:  auto; margin-top: 500px">
        <jsp:include page="DefaultBot.jsp"/>
        </div>
        </c:otherwise>
    </c:choose>
        </div>
    </body>
</html>
