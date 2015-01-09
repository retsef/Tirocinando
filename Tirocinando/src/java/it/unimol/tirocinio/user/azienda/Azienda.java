package it.unimol.tirocinio.user.azienda;

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
public class Azienda extends Abstract_user {

    public Azienda() {
        super(User_Type.AZIENDA);
    }

    @Override
    public void setIstance(ResultSet rs) throws Exception_user {
        try {
            while(rs.next()){
                this.setParameter("Denominazione",rs.getString("Denominazione"));
                this.setParameter("Indirizzo",rs.getString("Indirizzo"));
                this.setParameter("Citta",rs.getString("Citta"));
                this.setParameter("C.A.P.",""+rs.getInt("C.A.P."));
                this.setParameter("N°Telefono",""+rs.getInt("N°Telefono"));
                this.setParameter("C.F/P.IVA",rs.getString("C.F/P.IVA"));
                this.setParameter("Email",rs.getString("Email"));
                this.setParameter("Sito Web",rs.getString("Sito Web"));
                this.setParameter("Funzionale Firma Convenzione",rs.getString("Funzionale Firma Convenzione"));
                this.setParameter("Posizione Ricoperta",rs.getString("Posizione Ricoperta"));
                this.setParameter("N° Dipendenti",""+rs.getInt("N° Dipendenti"));
                this.setParameter("Denominazione",rs.getString("Denominazione"));
                this.setParameter("Tutor Aziendale",rs.getString("Tutor Aziendale"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(Tutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
