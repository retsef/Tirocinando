package it.unimol.tirocinio.user.studente;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Config.User_Type;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.user.tutor.Tutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 * @author roberto
 */
public class Studente extends Abstract_user {

    public Studente() {
        super(User_Type.STUDENTE);
    }

    @Override
    public void setIstance(ResultSet rs) throws Exception_user {
        try {
            this.setParameter("Matricola",""+rs.getInt("Matricola"));
            this.setParameter("Nome",rs.getString("Nome"));
            this.setParameter("Cognome",rs.getString("Cognome"));
            this.setParameter("Data nascita",rs.getDate("Data nascita").toString());
            this.setParameter("Comune nascita",rs.getString("Comune nascita"));
            this.setParameter("Provincia nascita",rs.getString("Provincia nascita"));
            this.setParameter("Nazionalita",rs.getString("Nazionalita"));
            this.setParameter("Codice Fiscale",rs.getString("Codice Fiscale"));
            this.setParameter("Provincia residenza",rs.getString("Provincia residenza"));
            this.setParameter("Comune residenza",rs.getString("Comune residenza"));
            this.setParameter("C.A.P.",""+rs.getInt("C.A.P."));
            this.setParameter("Indirizzo",rs.getString("Indirizzo"));
            this.setParameter("N_Civico",rs.getString("N_Civico"));
            this.setParameter("Recapito Telefonico",""+rs.getLong("Recapito Telefonico"));
            this.setParameter("Email",rs.getString("Email"));
        } catch (SQLException ex) {
            Logger.getLogger(Tutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void setAttribute(HttpServletRequest request) {
        try {
            request.getSession().setAttribute("Matricola",this.getParameter("Matricola"));
            request.getSession().setAttribute("Nome",this.getParameter("Nome"));
            request.getSession().setAttribute("Cognome",this.getParameter("Cognome"));
            request.getSession().setAttribute("Data nascita",this.getParameter("Data nascita"));
            request.getSession().setAttribute("Comune nascita",this.getParameter("Comune nascita"));
            request.getSession().setAttribute("Provincia nascita",this.getParameter("Provincia nascita"));
            request.getSession().setAttribute("Codice Fiscale",this.getParameter("Codice Fiscale"));
            request.getSession().setAttribute("Provincia residenza",this.getParameter("Provincia residenza"));
            request.getSession().setAttribute("Comune residenza",this.getParameter("Comune residenza"));
            request.getSession().setAttribute("C.A.P.",this.getParameter("C.A.P."));
            request.getSession().setAttribute("Indirizzo",this.getParameter("Indirizzo"));
            request.getSession().setAttribute("N_Civico",this.getParameter("N_Civico"));
            request.getSession().setAttribute("Recapito Telefonico",this.getParameter("Recapito Telefonico"));
            request.getSession().setAttribute("Email",this.getParameter("Email"));
        } catch (Exception_user ex) {
            Logger.getLogger(Studente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
