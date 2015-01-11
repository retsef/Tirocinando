package it.unimol.tirocinio.webpage;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import it.unimol.tirocinio.utils.auth.Manager;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cristian
 */
public class Profilo extends HttpServlet {

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
                response.sendRedirect("/Tirocinando/index.jsp?error=true");
            }

            if(user!=null){
                user.setAttribute(request);
                switch(user.getUserType()){
                    case STUDENTE:
                        response.sendRedirect("/Tirocinando/home.jsp?section=studente");
                        break;
                    case AZIENDA:
                        response.sendRedirect("/Tirocinando/home.jsp?section=azienda");
                        break;
                    case TUTOR:
                        response.sendRedirect("/Tirocinando/home.jsp?section=tutor");
                        break;
                }
            }
                
                /*
                String Nome = tempUser.getParameter("Nome");
                String Cognome = tempUser.getParameter("Cognome");
                String Matricola = tempUser.getParameter("Matricola");
                String Sesso = tempUser.getParameter("Sesso");
                String Anno_di_Immatricolazione = tempUser.getParameter("Anno di Immatricolazione");
                String Media_Voti = tempUser.getParameter("Media Voti");
                String Data_di_Nascita = tempUser.getParameter("Data di Nascita");
                String Cittadinanza = tempUser.getParameter("Cittadinanza");
                String Comune_di_Nascita = tempUser.getParameter("Comune di Nascita");
                String Provincia_di_Nascita = tempUser.getParameter("Provincia di Nascita");
                String Email = tempUser.getParameter("Email");
                String Codice_Fiscale = tempUser.getParameter("Codice Fiscale");
                String N_Telefonico = tempUser.getParameter("N.Telefonico");
                String Residenza_Indirizzo_NCivico = tempUser.getParameter("Residenza(Indirizzo-N.Civico)");
                String Residenza_Città_CAP_Comune = tempUser.getParameter("Residenza(Città-CAP-Comune)");
                String Status = tempUser.getParameter("Status Tirocinio");
                String Ore_Fatte = tempUser.getParameter("Ore Fatte");
                String Ore_Mancanti = tempUser.getParameter("Ore Mancanti");
                String Status_Libretto = tempUser.getParameter("Status Libretto");
                
                String Email_Istituzionale = tempUser.getParameter("Email Istituzionale");
                String Codice_Fiscale_PIva = tempUser.getParameter("Codice fiscale o P.iva");
                String Descrizione = tempUser.getParameter("Descrizione");
                String Sito_Web = tempUser.getParameter("Sito Web");
                String Tutor_Accademico = tempUser.getParameter("Tutor Accademico");
                String Numero_Dipendenti = tempUser.getParameter("Numero Dipendenti");
                String Posizione_Ricoperta = tempUser.getParameter("Posizione Ricoperta");
                String Nominativo_Abbilitato_Firma = tempUser.getParameter("Nominativo abbilitato firma");
                */
                
     
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
