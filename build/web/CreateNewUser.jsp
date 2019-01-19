<%-- 
    Document   : CreateNewUser
    Created on : Oct 12, 2017, 10:57:35 PM
    Author     : longnd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <body style="background: #f1f1f1; font-family: sans-serif">
         <jsp:include page="Default.jsp"></jsp:include>
         
         <div id="main">
             <div style="height: 50px; width: 895px; border-bottom:  #cccccc 2px solid;border-top:1px #ffffff solid;float: top; margin-left: 50px;">
                 <h3 style="text-align: left; font-family: sans-serif; margin-top: 15px">Tạo tài khoản khách hàng mới</h3>
                 </div>    
             <div style="margin-top: 70px; width: 650px; height: 430px; border-top:  1px #ffffff dotted
                  ; border-right: 1px #999999 dotted; position: absolute; z-index: 1 ">
                  <form action="CreateUser" method="post">
                 <table style="margin-top: 45px; margin-left: 115px">    
                     <tr>
                     <td>${sessionScope.error}
                     </td>
                 </tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 <tr></tr>
                 
                 <tr>
                     <td style="font-size: 12px;">Họ và tên * </td> 
                     <td><input style="width:  300px;" type="text" name="name"></td>
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
                     <td style="font-size: 12px;">Số điện thoại * </td>
                     <td><input style="width:  300px" type="number" name="phone"></td>
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
                     <td style="font-size: 12px;" >Gmail * </td>
                     <td><input style="width:  300px" type="email" name="mail"></td>
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
                     
                     <td style="font-size: 12px;">Quốc gia * </td>
                     <td>
                         <select name="general">
                     <option value="Vietnamese">Viet Nam</option>
                     <option value="England">England</option>
                     <option value="Thailand">Thai land</option>
                     <option value="american"> America</option>
                     <option value="China" > China</option>
                 </select>
                     </td>
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
                    <td style="font-size: 12px;">Form * </td> 
                 
                    <td style="font-size: 12px;"> personal <input type="radio" value="personal" name="form">
                    company<input type="radio" value="company" name="form"></td>
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
                     <td style="font-size: 12px;">Tên đăng nhập * </td>
                     <td><input style="width:  300px;" type="text" name="user"></td>
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
                     <td style="font-size: 12px;">Mật khẩu * </td>
                     <td><input style="width:  300px" type="password" name="pass"></td>
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
                     <td></td>
                     <td><input class="button button1" type="submit" value="Đăng Ký"></td>
                 </tr>


                 </table>       
                  </form>

             </div> 
             <div style="width: 300px; height: 90px; float: right;z-index: 1; border: 1px #ffffff dotted; margin-top: 160px">
                 <table style="margin-top: 3px">
                     <tr>
                         <td><img src="image/option/loginfb.png" style=" height: 100px; width: 200px"></td>
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
                     <tr></tr>
                     <tr></tr>
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
                         <td><img src="image/option/loginGoogle.png" style=" height: 100px; width: 200px"></td>
                     </tr>
                 </table>
             </div>
             <div id="circle" style="margin-top: 270px;margin-left: 636px; position: absolute;z-index: 2">
                 <h5 style="margin-top: 7px;margin-left: 5px;color: darkslategrey">OR</h5>
             </div>
         </div>
         <br>
         <br>
         <div style="height: auto; width: ">
         <jsp:include page="DefaultBot.jsp"></jsp:include>
         </div>
    </body>
</html>
