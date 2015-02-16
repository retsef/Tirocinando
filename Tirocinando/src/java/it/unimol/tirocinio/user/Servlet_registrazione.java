package it.unimol.tirocinio.user;

import it.unimol.tirocinio.mail.Manager;
import it.unimol.tirocinio.user.tutor.Token;
import it.unimol.tirocinio.user.tutor.Token_container;
import it.unimol.tirocinio.utils.db.Adapter;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
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
        try {
        if(request.getParameter("selection")!=null && !request.getParameter("selection").equals("") ) {
            switch (request.getParameter("selection")) {
                case "studente":
                    try {
                        this.UserData = this.ChekStudenteForm(request, response);
                        this.SetStudenteForm(this.UserData);
                        response.sendRedirect("/Tirocinando/index.jsp?success=true");
                    } catch(Exception_user ex) {
                        response.sendRedirect("/Tirocinando/registrazione.jsp?selection=studente&error=true");
                    }
                    break;
                case "azienda":
                    try {
                        this.UserData = this.ChekAziendaForm(request, response);
                        this.SetAziendaForm(this.UserData);
                        response.sendRedirect("/Tirocinando/index.jsp?success=true");
                    } catch(Exception_user ex) {
                        response.sendRedirect("/Tirocinando/registrazione.jsp?selection=azienda&error=true");
                    }
                    break;
                case "tutor":
                    try {
                        this.UserData = this.ChekTutorForm(request, response);
                        this.SetTutorForm(this.UserData);
                        response.sendRedirect("/Tirocinando/index.jsp?success=true");
                    } catch(Exception_user ex) {
                        response.sendRedirect("/Tirocinando/registrazione.jsp?selection=tutor&error=true");
                    }
                    break;
            }
        } else {
            response.sendRedirect("/Tirocinando/registrazione.jsp");
        }
        }catch(SQLException | Exception_db ex){
            Logger.getLogger(Permission.class.getName()).log(Level.SEVERE, null, ex);
            response.sendRedirect("/Tirocinando/registrazione.jsp?error=true");
        }
    }
    
    public String getParameter(String str) throws Exception_user{
        if(!this.UserData.containsKey(str))
            throw new Exception_user("Campo Utente inesistente");
        return this.UserData.get(str);
    }
    
    private HashMap<String, String> ChekStudenteForm(HttpServletRequest request, HttpServletResponse response) throws Exception_user {
        HashMap<String, String> temp_UserData = new HashMap<>();
        Enumeration<String> enumeration = request.getParameterNames();
        
        String date = "";
        while(enumeration.hasMoreElements()){
            String parameterName = (String) enumeration.nextElement();
            if(parameterName.equals("il_anno") || parameterName.equals("il_mese") || parameterName.equals("il_giorno")){
                date += request.getParameter(parameterName);
                if(parameterName.equals("il_giorno"))
                    temp_UserData.put("Data nascita", date);
            }else if(parameterName.equals("Email")) {
                temp_UserData.put(
                        parameterName,
                        request.getParameter(parameterName)+"@studenti.unimol.it"
                );
            }else if(!request.getParameter(parameterName).equals("")) {
                
                temp_UserData.put(
                        parameterName,
                        request.getParameter(parameterName)
                );
                
            } else {
                throw new Exception_user("Campi nella pagina di registrazione non validi");
            }
        }
        
        return temp_UserData;
    }
    
    private HashMap<String, String> ChekAziendaForm(HttpServletRequest request, HttpServletResponse response) throws Exception_user {
        HashMap<String, String> temp_UserData = new HashMap<>();
        Enumeration<String> enumeration = request.getParameterNames();
        
        while(enumeration.hasMoreElements()){
            String parameterName = (String) enumeration.nextElement();
            if(parameterName.equals("Fax") || parameterName.equals("Sito Web") || !request.getParameter(parameterName).equals("")) {
                if(parameterName.equals("Fax"))
                    temp_UserData.put(
                            parameterName,
                            "0"
                    );
                else
                    temp_UserData.put(
                        parameterName,
                        request.getParameter(parameterName)
                    );
                
            } else {
                throw new Exception_user("Campi nella pagina di registrazione non validi");
            }
        }
        
        return temp_UserData;
    }
    
    private HashMap<String, String> ChekTutorForm(HttpServletRequest request, HttpServletResponse response) throws Exception_user {
        HashMap<String, String> temp_UserData = new HashMap<>();
        Enumeration<String> enumeration = request.getParameterNames();
        
        while(enumeration.hasMoreElements()){
            String parameterName = (String) enumeration.nextElement();
            if(parameterName.equals("Email Istituzionale")) {
                temp_UserData.put(
                        parameterName,
                        request.getParameter(parameterName)+"@unimol.it"
                );
            }else if(!request.getParameter(parameterName).equals("")) {
                
                temp_UserData.put(
                        parameterName,
                        request.getParameter(parameterName)
                );
                
            } else {
                throw new Exception_user("Campi nella pagina di registrazione non validi");
            }
        }
        
        return temp_UserData;
    }
    
    private void SetStudenteForm(HashMap<String, String> UserData) throws SQLException, Exception_db {
        String[] values = {
            UserData.get("Matricola"),
            UserData.get("Nome"),
            UserData.get("Cognome"),
            UserData.get("Data nascita"),
            UserData.get("Comune nascita"),
            UserData.get("Provincia nascita"),
            UserData.get("Nazionalita"),
            UserData.get("Codice Fiscale"),
            UserData.get("Provincia residenza"),
            UserData.get("Comune residenza"),
            UserData.get("C.A.P."),
            UserData.get("Indirizzo"),
            UserData.get("N_Civico"),
            UserData.get("Recapito Telefonico"),
            UserData.get("Email"),
            UserData.get("Username"),
            UserData.get("Password")
        };
        Adapter adapt = new Adapter();
        adapt.insert("Studente", values);
    }
    
    private void SetAziendaForm(HashMap<String, String> UserData) throws SQLException, Exception_db {
        String[] values = {
            UserData.get("Denominazione"),
            UserData.get("Indirizzo"),
            UserData.get("Citta"),
            UserData.get("C.A.P."),
            UserData.get("Telefono"),
            UserData.get("Fax"),
            UserData.get("C.F/P.IVA"),
            UserData.get("Email"),
            UserData.get("Sito Web"),
            UserData.get("Username"),
            UserData.get("Password")
        };
        Adapter adapt = new Adapter();
        adapt.insert("Azienda", values, "`Denominazione`,`Indirizzo`,`Citta`,`C.A.P.`,`Telefono`,`Fax`,`C.F/P.IVA`,`Email`,`Sito Web`,`Username`,`Password`");
    }
    
    private void SetTutorForm(HashMap<String, String> UserData) throws SQLException, Exception_db {
        String[] values = {
            UserData.get("Nome"),
            UserData.get("Cognome"),
            UserData.get("Email Istituzionale"),
            UserData.get("Username"),
            UserData.get("Password")
        };
        
        /**
         * Crea un token a scadenza per confermare la registrazione
         */
        Token_container container = new Token_container();
        container.store_new_token();
        Token token = container.get_Token();
        /**
         * Invia una mail di prova!
         */
        Manager mail = new Manager();
        try {
            mail.SendMessage(
                    UserData.get("Email Istituzionale"), 
                    "Registazione", 
                    "<h1>Grazie per esserti iscritto al sito di Tirocinando!</h1>"
                    + "Per completare l'iscrizione visita il sito"
                    + "<a href=\"www.provvisorio.it/Tirocinando/Conferma?token"+token.get().toString()+"\">Completa Resgistazione</a>"
                    + " Oppure copia il seguente link nel tuo browser www.provvisorio.it/Tirocinando/Conferma?token"+token.get().toString());
        } catch (MessagingException ex) {
            Logger.getLogger(Servlet_registrazione.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        Adapter adapt = new Adapter();
        adapt.insert("Tutor_tampone", values, "`Nome`,`Cognome`,`Email Istituzionale`,`Username`,`Password`");
        adapt.select("Tutor_tampone", "idTutor", "Username = "+UserData.get("Username")+" && Password = "+UserData.get("Password"));
        ResultSet tampone = adapt.getResult();
        int seconds = (int)(System.currentTimeMillis() / 1000);
        String[] token_tamp = {
            Integer.toString(tampone.getInt("idTutor")),
            token.get().toString(),
            Integer.toString(seconds)
        };
        adapt.insert("Tutor_token_assign", values);
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
