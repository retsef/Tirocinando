/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unimol.tirocinio.webpage;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import it.unimol.tirocinio.utils.auth.Manager;
import it.unimol.tirocinio.utils.db.Adapter;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ciro
 */
public class LibrettoDiario extends HttpServlet {

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
        
        Manager auth = new Manager(request, response);
        Abstract_user user = null;
        try {
            user = auth.check();
        } catch (Exception_auth ex) {
            //pagina di errore se non si e' nella sessione giusta
            response.sendRedirect("/Tirocinando/index.jsp?session=false");
        }
        
        if(user!=null){
            user.setAttribute(request);
            switch(user.getUserType()){
                case STUDENTE:
                    Libretto_Studente studente = new Libretto_Studente(request);
                    studente.setParameter();
                    response.sendRedirect("/Tirocinando/librettodiario.jsp?section=studente");
                    break;
                case AZIENDA:
                    response.sendRedirect("/Tirocinando/librettodiario.jsp?section=azienda");
                    break;
                case TUTOR:
                    response.sendRedirect("/Tirocinando/librettodiario.jsp?section=tutor");
                    break;
            }
        }
        
    }
    
    /**
     * Formalizza l'elemento Libretto studente per ciclarlo nella jsp
     * (setAttribute può contenere oggetti Object)
     */
    private class Libretto_Studente {
        private Adapter adapt;
        private ResultSet rs;
        private HttpServletRequest request;
        private HashMap<String, String> hashmap;
        
        public Libretto_Studente(HttpServletRequest pRequest) {
            request = pRequest;
            hashmap = new HashMap<>();
            adapt = new Adapter();
            try { 
                adapt.select("LibrettoDiario"); 
            } catch (SQLException | Exception_db ex) { }
            rs = adapt.getResult();
        }
        
        public void setParameter() {
            try {
                while(rs.next()) {
                    hashmap.put("Nome Studente", rs.getString("Nome_studente"));
                }
                request.getSession().setAttribute("HashMap_Libretto", this.hashmap);
            } catch (SQLException ex) { }
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
