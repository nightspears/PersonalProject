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
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Acc;

/**
 *-
 * @author ADMIN
 */
@WebServlet(name="loginServelet", urlPatterns={"/login"})
public class loginServelet extends HttpServlet {
   
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
        HttpSession session = request.getSession();
        session.removeAttribute("AD");
    request.getRequestDispatcher("login").forward(request, response);
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
        
        session.removeAttribute("AD");
        request.getRequestDispatcher("login.jsp");
    String ee= "username or password invalid!";
    String u = request.getParameter("uname");
    String pw = request.getParameter("psw");
    String r=request.getParameter("rem");
    // luu 3 cai vao cookie u pw r trong truong hop nay luu tru user thoi ko pass nen chi 2
        Cookie cu=new Cookie("cuser",u);
        Cookie cr=new Cookie("crem",r);
        if(r!=null){
        cu.setMaxAge(60*60*24*2);
        cr.setMaxAge(60*60*24*2);
        }
        else{
        //no tick :D
        cu.setMaxAge(0);
        cr.setMaxAge(0);
        }
        ////////////////////////////////////
        response.addCookie(cu);
        response.addCookie(cr);
        AccDao acd = new AccDao();
    
            Acc account = acd.check(u, pw);
            if("admin".equalsIgnoreCase(u)){
            session.setAttribute("AD", u);
            }
            if(account == null){
            request.setAttribute("error",ee );
            request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            else{
            session.setAttribute("acc", account);
            response.sendRedirect("home");
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
