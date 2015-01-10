/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Roberto
 */
public class Servlet_auth extends HttpServlet {
    
    private HttpServletRequest request;
    private HttpServletResponse response;
    
    
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
        this.request = pRequest;
        this.response = pResponse;
        
        //this.response.setBufferSize(2000000);
        

        this.manager = new Manager(this.request, this.response);
        Abstract_user user;
        
        String Username = this.request.getParameter("username");
        String Password = this.request.getParameter("password");

        
        try {
            user =  this.manager.check();
        } catch (Exception_auth ex) {
            //this.response.sendRedirect("/Tirocinando/index.jsp?error=true");
            
        }
        
        
        try {
            user = this.manager.login(Username, Password);
            switch(user.getUserType()){
                case STUDENTE:
                    this.response.sendRedirect("/Tirocinando/home.jsp?section=studente");
                    break;
                case AZIENDA:
                    this.response.sendRedirect("/Tirocinando/home.jsp?section=azienda");
                    break;
                case TUTOR:
                    this.response.sendRedirect("/Tirocinando/home.jsp?section=tutor");
                    break;
            }
        } catch (Exception_user ex) {
            this.response.sendRedirect("/Tirocinando/index.jsp?error=true");
            //Logger.getLogger(Servlet_auth.class.getName()).log(Level.SEVERE, null, ex);
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
