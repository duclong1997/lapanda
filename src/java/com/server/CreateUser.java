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
public class CreateUser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nameUser =request.getParameter("name");
        String phone= request.getParameter("phone");
        String mail =request.getParameter("mail");
        String general =request.getParameter("general");
        String form= request.getParameter("form");
        if (nameUser==null|| phone==null|| mail==null|| general==null || form==null)
        {
            HttpSession sesion = request.getSession();
            sesion.setAttribute("error", "value is not null");
            response.sendRedirect("CreateNewUser.jsp");
        } else {
            DBContext context = new DBContext();
            try {
                Connection con = context.getConnection();
                Statement st = con.createStatement();
                String insert = "insert into seller (NameUser,phoneNumber,gmail,general,form) values ('" + nameUser + "'," + phone + ",'" + mail + "','" + general + "','" + form + "')";
                st.executeUpdate(insert);
                String selectID = "select * from seller where NameUser='" + nameUser + "'";
                ResultSet rs = st.executeQuery(selectID);
                String id = null;
                while (rs.next()) {
                    id = rs.getString(1);
                }
                String user = request.getParameter("user");
                String pass = request.getParameter("pass");
                String insetLogin = "insert into loginUser(userName,password,idUser) values ('" + user + "','" + pass + "'," + id + ")";
                st.executeUpdate(insetLogin);   
                response.sendRedirect("LoginUser.jsp");
            } catch (Exception ex) {
                Logger.getLogger(CreateUser.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
