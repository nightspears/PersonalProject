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
@WebServlet(name = "changePassword", urlPatterns = {"/changePassword"})
public class changePassword extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet changePassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet changePassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        request.getRequestDispatcher("changepass.jsp").forward(request, response);
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
        
        String uname=request.getParameter("uname");
        String op=request.getParameter("oldpass");
        String np=request.getParameter("newpass");
        String cp=request.getParameter("newpass2");
        String ee;
        
        
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        AccDao acd = new AccDao();
        boolean check = acd.existed(uname);
        
        if(!op.equals(acd.returnpass(uname).toString().trim())){
        ee="Old password incorrect!";
        session.setAttribute("errchangpass",ee );
        request.getRequestDispatcher("changepass.jsp").forward(request, response);
        }
        else if(!np.equals(cp)){
        ee="Confirm-pass wrong!";
        session.setAttribute("errchangpass",ee );
        request.getRequestDispatcher("changepass.jsp").forward(request, response);
        }
        else{
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");  
        LocalDateTime now = LocalDateTime.now(); 
        String date=dtf.format(now);
        acd.changepass(np, uname);
        Acc account = new Acc(uname, np, date, "User");
        session.setAttribute("acc", account);
        response.sendRedirect("home");
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
