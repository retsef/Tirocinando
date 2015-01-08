package it.unimol.tirocinio.utils.document;

import com.mysql.jdbc.Util;
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
 *
 * @author VittorioBarile
 */


public class Servlet_Collector_Accettazione extends HttpServlet {
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
            
        try {
            //istanziazione adapter
            //adapter.select(tabella, riga1, riga2, where)
            //adapter.getresult()
            //while(result.next()) {
            //result.getvalue()
            
            Adapter adapt = new Adapter();
            
            adapt.select("studente_registrazione");
            ResultSet rs = adapt.getResult();
                while(rs.next()) {
                    String nome = rs.getString("nome");
                    String cognome = rs.getString("cognome");
                    String matricola = rs.getString("matricola");

                    System.out.println("<h1>" + nome + cognome + matricola + 
                                        "<div class=\"btn-group\" role=\"group\" aria-label=\"...\">\n" +
                                        "<button type=\"button\" class=\"btn btn-default\">Accetta</button>\n" +
                                        "<button type=\"button\" class=\"btn btn-default\">Rifiuta</button>\n" +
                                        "</div>" + "<h1>");
                }
            } catch (SQLException ex) {
            System.out.println("<h1>Errore select</h1>");
            Logger.getLogger(Servlet_Collector_Accettazione.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception_db ex) {
                Logger.getLogger(Servlet_Collector_Accettazione.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        
        
        
    }
    
}
