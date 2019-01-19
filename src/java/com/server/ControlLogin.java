/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.server;

import com.biz.ArrayUserLogin;
import com.entity.LoginUser;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author longnd
 */
public class ControlLogin extends HttpServlet {

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
        String name =request.getParameter("user");
        String pass= request.getParameter("pass");
         HttpSession session = request.getSession();
        ArrayUserLogin login = new ArrayUserLogin();
         session.removeAttribute("error2");
        if (name.equals("") ||pass.equals(""))
        {
            session.setAttribute("error2", "value is not null");
            response.sendRedirect("LoginUser.jsp");
        } else {
            try {
                ArrayList<LoginUser> array = login.select();
                for (int i = 0; i < array.size(); i++) {
                    if (array.get(i).getName().equals(name) && array.get(i).getPass().equals(pass)) {

                        session.setAttribute("login", name);
                        ServletContext context = getServletContext();
                        context.setAttribute("id", array.get(i).getId());
                        response.sendRedirect("PageUser");
                    }
                }
                session.setAttribute("error2", " the password and user name is wrong");
                response.sendRedirect("LoginUser.jsp");
            } catch (Exception ex) {
                Logger.getLogger(ControlLogin.class.getName()).log(Level.SEVERE, null, ex);
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
