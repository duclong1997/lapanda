/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.server;

import com.biz.ArrayIteam;
import com.connect.DBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
public class PaymentProduct extends HttpServlet {

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
        Date timeOrder = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("E hh:mm:ss a 'at'  yyyy.MM.dd ");
        System.out.println(ft.format(timeOrder));
        String name = request.getParameter("nameCustomer");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
         HttpSession session = request.getSession();
         session.removeAttribute("error1");
        if (name.equals("")|| phone.equals("")|| address.equals("")) {
           
            session.setAttribute("error1", "the value is not null");
            response.sendRedirect("Payment.jsp");
        }
        else {
            try {

               
                ArrayIteam iteam = (ArrayIteam) session.getAttribute("iteam");
                DBContext con = new DBContext();
                Connection contxt = con.getConnection();
                Statement st = contxt.createStatement();
                for (int i = 0; i < iteam.getIteam().size(); i++) {
                    String insert = "insert into orderProduct (idProduct,nameCustomer,phoneNumber,adressCustomer,quality,timeOrder) \n"
                            + "values (" + iteam.getIteam().get(i).getIdIteam() + ",'" + name + "'," + phone + ",'" + address + "'," + iteam.getIteam().get(i).getQualityIteam() + ",'" + ft.format(timeOrder) + "')";
                    st.executeUpdate(insert);
                }

                response.sendRedirect("PaySuccess.jsp");

            } catch (Exception ex) {
                Logger.getLogger(PaymentProduct.class.getName()).log(Level.SEVERE, null, ex);
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
