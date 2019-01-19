/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.server;

import com.connect.DBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author longnd
 */
public class ExchangePass extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session =request.getSession();
            String amail = request.getParameter("mail");
            DBContext context = new DBContext();
            Connection con = context.getConnection();
            Statement st = con.createStatement();
            ResultSet rs;
            String select = "select b.idUser from seller as a join loginUser as b \n"
                    + "on  a.idUser= b.idUser\n"
                    + "where gmail= '"+amail+"'";
            rs= st.executeQuery(select);
            String id = null;
            while (rs.next()) {
                id = rs.getString(1);
            }
            
            // khong tim thay thi  id =null
            if (id == null) {
                session.setAttribute("losePass", "mail is not exist");
                response.sendRedirect("ChangePass.jsp");
            } else {
                session.setAttribute("edit", id);
                response.sendRedirect("InputNewpass.jsp");
            }
        } catch (Exception ex) {
            Logger.getLogger(ExchangePass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
