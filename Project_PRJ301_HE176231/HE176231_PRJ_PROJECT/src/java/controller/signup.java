/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.AccDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import model.Acc;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="signup", urlPatterns={"/signup"})
public class signup extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signup</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet signup at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        AccDao acd = new AccDao();
        String u = request.getParameter("uname");
        boolean check = acd.existed(u);
        int len =u.length();
        String ee= "username areadly existed!";
        if(check){
        request.setAttribute("existed",ee );
        request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        if(len>10){
        ee= "username too long!";
        request.setAttribute("existed",ee );
        request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        
        
        String p = request.getParameter("psw");
        String p2=request.getParameter("psw2");
        if(!p.equals(p2)){
        ee= "Wrong Confirm passWord!";
        request.setAttribute("existed",ee );
        request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        
        
        else{
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
        LocalDateTime now = LocalDateTime.now();  
        System.out.println(dtf.format(now));  
        
        String date=dtf.format(now);
        String role="user";
        Acc account = new Acc(u, p, date, role);
        acd.addacc(u, p, date);
        session.setAttribute("acc", account);
        session.setAttribute("username1902", u);
        session.setAttribute("password1902", p);
        response.sendRedirect("home");
       
     //   request.getRequestDispatcher("home.jsp").forward(request, response);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
