package it.unimol.tirocinio.user.tutor;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Config.User_Type;
import it.unimol.tirocinio.user.Exception_user;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;

/**
 * @author roberto
 */
public class Tutor extends Abstract_user {

    public Tutor() {
        super(User_Type.TUTOR);
    }

    @Override
    public void setIstance(ResultSet rs) throws Exception_user {
        try {
            this.setParameter("idTutor", rs.getString("idTutor"));
            this.setParameter("Nome", rs.getString("Nome"));
            this.setParameter("Cognome", rs.getString("Cognome"));
            this.setParameter("Email Istituzionale", rs.getString("Email Istituzionale"));
        } catch (SQLException ex) {
            Logger.getLogger(Tutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void setAttribute(HttpServletRequest request) {
        try {
            request.getSession().setAttribute("Nome", this.getParameter("Nome"));
            request.getSession().setAttribute("Cognome", this.getParameter("Cognome"));
            request.getSession().setAttribute("Email Istituzionale", this.getParameter("Email Istituzionale"));
        } catch (Exception_user ex) {
            Logger.getLogger(Tutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
