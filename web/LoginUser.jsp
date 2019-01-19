<%-- 
    Document   : LoginUser
    Created on : Oct 12, 2017, 10:06:22 PM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login User</title>
     <style>
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
    <body style="background: #f1f1f1; font-family: sans-serif" >
        <jsp:include page="Default.jsp"/>
        <div style="height: 250px; width: 900px; border: 1px #999999 solid; margin-top: 100px;margin-left: 100px; background: #ffffff;z-index: -1">
            <div style="height: 40px; width: 400px; border-bottom: #999999 1px dotted; float: left;float: top">
                <h3 style="text-align: center;font-family: sans-serif; color: #11252F; margin-top: 10px;">Khách hàng đã đăng ký</h3>
            </div>
            
            <div style="margin-top: 45px; margin-left: 10px; position: absolute;height: 172px; width: 454px; border-right:1px #999999 dotted;z-index: 1;"> 
                <table style="margin-top: 10px">        
                    <form  action="ControlLogin" method="post">
                        
                        <tr> 
                            <td></td>
                            <td style="font-size: 15px"> ${sessionScope.error2} </td></tr>
                        <tr>
                            
                            <td style="font-size: 12px">Tên đăng nhập * </td>
                            <td><input style="width: 200px; overflow: hidden" type="text" name="user"></td>
                        </tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr>
                            <td style="font-size: 12px"> Mật khẩu * </td>
                            <td><input style="width: 200px; overflow: hidden" type="password" name="pass"></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td></td>
                            <td><a href="ChangePass.jsp" style="color:#6666ff ;text-decoration: none;font-size: 12px">Quên mật khẩu?</a></td>
                        </tr>
                        
                        <tr></tr>
                        <tr>
                            <td></td>
                            <td><input class="button button1" type="submit" value="ĐĂNG NHẬP"></td>
                        </tr>
                    </form>
                    <tr>  </tr>
                    <tr>
                        <td></td>
                        <td style="font-size: 12px">Bạn chưa là thành viên?<a href="CreateNewUser.jsp" style="color:#6666ff ;text-decoration: none;font-size: 12px "> Đăng kí ngay</a></td>
                    </tr>
                </table>

            </div>
            <div style="margin-top: 50px; margin-left: 580px; position: absolute; z-index: 1">
                    <table>
                        <tr>
                            <td><img src="image/option/loginfb.png" style="height: 60px; width: 100px"></td> 

                        </tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr></tr>
                        <tr>
                            <td><img src="image/option/loginGoogle.png" style="height: 60px; width: 100px"></td>
                        </tr>
                    </table>
                </div>
            <div id="circle" style="margin-top: 80px;margin-left: 450px; position: absolute;z-index: 2">
                <h5 style="margin-top: 7px;margin-left: 5px;color: darkslategrey">OR</h5>
            </div>
        </div>
        <br> 
        <jsp:include page="DefaultBot.jsp" />
    </body>
</html>
