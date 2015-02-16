/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package it.unimol.tirocinio.user;

import it.unimol.tirocinio.utils.db.Adapter;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author giannidegregorio
 */
public class Servlet_accettazione extends HttpServlet {

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
        
        String matricola = request.getParameter("matricola");
        Adapter ad = new Adapter();
        try {
            ad.select("Studente_tampone", "*", "Matricola = "+matricola);
            ResultSet rs = ad.getResult();
        
            String[] value = {
                Integer.toString(rs.getInt("Matricola")),
                rs.getString("Nome"),
                rs.getString("Cognome"),
                rs.getDate("Data nascita").toString(),
                rs.getString("Comune nascita"),
                rs.getString("Provincia nascita"),
                rs.getString("Nazionalita"),
                rs.getString("Codice Fiscale"),
                rs.getString("Provincia residenza"),
                rs.getString("Comune residenza"),
                Integer.toString(rs.getInt("C.A.P.")),
                rs.getString("Indirizzo"),
                rs.getString("N_Civico"),
                Long.toString(rs.getLong("Recapito Telefonico")),
                rs.getString("Email"),
                rs.getString("Username"),
                rs.getString("Password")
            };
            
            ad.insert("Studente", value);
            ad.delete("Studente_tampone", "Matricola = "+matricola);
            response.sendRedirect("/Tirocinando/Accettazione");
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Servlet_accettazione.class.getName()).log(Level.SEVERE, null, ex);
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
