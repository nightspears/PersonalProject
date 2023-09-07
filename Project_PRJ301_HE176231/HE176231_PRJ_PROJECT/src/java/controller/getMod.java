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
import java.util.List;
import model.Mod;
import model.Type;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="getMod", urlPatterns={"/getMod"})
public class getMod extends HttpServlet {
   
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
            out.println("<title>Servlet getMod</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet getMod at " + request.getContextPath () + "</h1>");
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
    //    processRequest(request, response);
//        
//        Dao dao = new Dao();
//        String type_id_raw="9";
//        
//        type_id_raw=(String)request.getAttribute("type_id");
//        
//        List<Mod> listmodbytypes= dao.getModbyTypes(type_id_raw);
//        
//        request.setAttribute("listmodbytypes", listmodbytypes);
//        
//        request.getRequestDispatcher("home").forward(request, response);
        ///////////////////////////////////////////////////////////////////////////////////////
        Dao dao = new Dao();
        List<Type> listtype =dao.getAllTypes();
        String type_id_raw =request.getParameter("type_id");
        
        if(type_id_raw==null){
        type_id_raw="9";
        type_id_raw=request.getParameter("type_id");
        }
        
        request.setAttribute("type", listtype);
        List<Mod> listmodbytypes= dao.getModbyTypes(type_id_raw);
        request.setAttribute("listmodbytypes", listmodbytypes);
        request.getRequestDispatcher("home").forward(request, response);
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
//        //processRequest(request, response);
//        request.getRequestDispatcher("home.jsp").forward(request, response); 
    request.getRequestDispatcher("home").forward(request, response);
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
