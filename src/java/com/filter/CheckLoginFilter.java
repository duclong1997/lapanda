/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author longnd
 */

public class CheckLoginFilter implements Filter {

    // dung de xu li cac request duoc gui di
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req= (HttpServletRequest)request;
        HttpServletResponse res= (HttpServletResponse) response;
        HttpSession session = req.getSession();
        String st= (String) session.getAttribute("login");
        if (st!=null)
        {
            // vuot qua filter
             chain.doFilter(req,res);
        }
        
        else {
           res.sendRedirect("LoginUser.jsp");
        }
    }

    // khoi dau cua 1 filter 
    @Override
    public void init(FilterConfig fc) throws ServletException {
        return;
    }

    // 1 filter bi xoa di 
    @Override
    public void destroy() {
     return;
    }

}
