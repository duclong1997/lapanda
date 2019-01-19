/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.server;

import com.biz.ArrayIteam;
import com.entity.Iteam;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ControlViewCustomer extends HttpServlet {
    ArrayIteam array;
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
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String quality = request.getParameter("quality");
    
        HttpSession context = request.getSession();
        
        // session with iteam added in  cart
        array = (ArrayIteam) context.getAttribute("iteam");
        
        if (array.getIteam().isEmpty()) {
            array.getIteam().add(new Iteam(Integer.parseInt(id), name, Double.parseDouble(price), Integer.parseInt(quality)));
        }
        else {
            int index= checkIteam(Integer.parseInt(id));
            if (index==-1)
            {
                array.getIteam().add(new Iteam(Integer.parseInt(id), name,Double.parseDouble(price), Integer.parseInt(quality)));
            }
            else{
                array.addMoreQuality(Integer.parseInt(quality), index);
            }
        }
        context.setAttribute("iteam", array);
        
        response.sendRedirect("ViewProductOfCustomer.jsp");
        
        
    }

    public int checkIteam( int id)
    {
        for (int i=0;i<array.getIteam().size();i++)
        {
            if (id == array.getIteam().get(i).getIdIteam())
            {
                return i;
            }
        }
        return -1;
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
