/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.Dao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Acc;
import model.Comment;
import model.Mod;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "comment", urlPatterns = {"/comment"})
public class comment extends HttpServlet {

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
        request.getRequestDispatcher("comment.jsp").forward(request, response);
        try ( PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession();
            String id_raw= request.getParameter("id");
            Dao dao = new Dao();
            Acc acc = new Acc();
            List<Mod> listshow = dao.getModbyid(id_raw);
            acc = (Acc) session.getAttribute("acc");
            if (acc == null) {
                acc = (Acc) session.getAttribute("acc");
            }
            
            String u = acc.getUserName();
            String context = request.getParameter("context");
         
            dao.makecomment(u, id_raw, context);
            
            
            List<Comment> listc = dao.getcommentbyid(id_raw);
            session.setAttribute("listcomment", listc);
            session.setAttribute("listupdate", listshow);

            request.getRequestDispatcher("comment.jsp").forward(request, response);
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
        processRequest(request, response);
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
        processRequest(request, response);
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
