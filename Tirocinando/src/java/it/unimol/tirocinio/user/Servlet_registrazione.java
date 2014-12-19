package it.unimol.tirocinio.user;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author roberto
 */
public class Servlet_registrazione extends HttpServlet {
    
    HashMap<String, String> UserData = new HashMap();
    
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
    
        if(request.getParameter("selection")!=null) {
            switch (request.getParameter("selection")) {
                case "studente":
                    if(this.ChekStudenteForm(request, response)) {
                        //this.SetStudenteForm();
                    } else 
                        response.sendRedirect("/Tirocinando/registrazione.jsp?section=studente&error=true");
                    break;
                case "azienda":
                    if(this.ChekAziendaForm(request, response)) {
                        //this.SetAziendaForm();
                    } else 
                        response.sendRedirect("/Tirocinando/registrazione.jsp?section=azienda&error=true");
                    break;
                case "tutor":
                    if(this.ChekTutorForm(request, response)) {
                        //this.SetTutorForm();
                    } else 
                        response.sendRedirect("/Tirocinando/registrazione.jsp?section=tutor&error=true");
                    break;
            }
        } else {
            response.sendRedirect("/Tirocinando/registrazione.jsp?error=true");
        }
    }
    
    public String getParameter(String str) throws Exception_user{
        if(!this.UserData.containsKey(str))
            throw new Exception_user("Campo Utente inesistente");
        return this.UserData.get(str);
    }
    
    private boolean ChekStudenteForm(HttpServletRequest request, HttpServletResponse response) {
        if(
                    request.getAttribute("Nome")!=null && request.getAttribute("Cognome")!=null &&
                    request.getAttribute("Nato_a")!=null && request.getAttribute("Il")!=null &&
                    request.getAttribute("Nazionalita")!=null && request.getAttribute("Residente_in")!=null &&
                    request.getAttribute("Cap")!=null && request.getAttribute("Provincia")!=null &&
                    request.getAttribute("Via")!=null && request.getAttribute("Via_n")!=null &&
                    request.getAttribute("Telefono")!=null && request.getAttribute("Cellulare")!=null &&
                    request.getAttribute("Email")!=null && request.getAttribute("CF")!=null &&
                    request.getAttribute("Dipartimento")!=null && request.getAttribute("Corso_laurea")!=null
            ){
                HashMap<String, String> temp_UserData = new HashMap<>();
                temp_UserData.put(null, null);
                return true;
            } else {
                return false;
            }
    }
    
    private boolean ChekAziendaForm(HttpServletRequest request, HttpServletResponse response) {
        
        return false;
}
    
    private boolean ChekTutorForm(HttpServletRequest request, HttpServletResponse response) {
        
        return false;
    }
    
    private void SetStudenteForm(HashMap<String, String> UserData) {
        
    }
    
    private void SetAziendaForm(HashMap<String, String> UserData) {
        
    }
    
    private void SetTutorForm(HashMap<String, String> UserData) {
        
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
