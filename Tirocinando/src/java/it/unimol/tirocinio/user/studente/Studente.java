package it.unimol.tirocinio.user.studente;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Config.User_Type;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.user.tutor.Tutor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
            while(rs.next()){
                this.setParameter("Matricola",""+rs.getInt("Matricola"));
                this.setParameter("Nome",rs.getString("Nome"));
                this.setParameter("Cognome",rs.getString("Cognome"));
                this.setParameter("Data nascita",rs.getDate("Data nascita").toString());
                this.setParameter("Sesso",rs.getString("Sesso"));
                this.setParameter("Comune nascita",rs.getString("Comune nascita"));
                this.setParameter("Provincia nascita",rs.getString("Provincia nascita"));
                this.setParameter("Codice Fiscale",rs.getString("Codice Fiscale"));
                this.setParameter("Provincia residenza",rs.getString("Provincia residenza"));
                this.setParameter("Comune residenza",rs.getString("Comune residenza"));
                this.setParameter("C.A.P.",""+rs.getInt("C.A.P."));
                this.setParameter("Indirizzo",rs.getString("Indirizzo"));
                this.setParameter("N°Civico",rs.getString("N°Civico"));
                this.setParameter("Recapito Telefonico",""+rs.getInt("Recapito Telefonico"));
                this.setParameter("Email",rs.getString("Email"));
                this.setParameter("Crediti",""+rs.getInt("Crediti"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Tutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
