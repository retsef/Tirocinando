/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Roberto
 */
public class Servlet_auth extends HttpServlet {

    private static HttpServletRequest request;
    private static HttpServletResponse response;
    
    private Manager manager;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param pRequest servlet request
     * @param pResponse servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest pRequest, HttpServletResponse pResponse)
            throws ServletException, IOException {
        request = pRequest;
        response = pResponse;

        this.manager = new Manager(request, response);
        Abstract_user user;
        
        String Username = request.getParameter("username");
        String Password = request.getParameter("password");

        
        try {
            user = this.manager.check();
        } catch (Exception_auth ex) {
            response.sendRedirect("/Tirocinando/index.jsp?error=true");
            //Logger.getLogger(Servlet_auth.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            user = this.manager.login(Username, Password);
        } catch (Exception_user ex) {
            Logger.getLogger(Servlet_auth.class.getName()).log(Level.SEVERE, null, ex);
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
