package it.unimol.tirocinio.user.azienda;

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
public class Azienda extends Abstract_user {

    public Azienda() {
        super(User_Type.AZIENDA);
    }

    @Override
    public void setIstance(ResultSet rs) throws Exception_user {
        try {
            this.setParameter("idAzienda",rs.getString("idAzienda"));
            this.setParameter("Denominazione",rs.getString("Denominazione"));
            this.setParameter("Indirizzo",rs.getString("Indirizzo"));
            this.setParameter("Citta",rs.getString("Citta"));
            this.setParameter("C.A.P.",""+rs.getInt("C.A.P."));
            this.setParameter("Telefono",""+rs.getLong("Telefono"));
            this.setParameter("Fax",""+rs.getLong("Fax"));
            this.setParameter("C.F/P.IVA",rs.getString("C.F/P.IVA"));
            this.setParameter("Email",rs.getString("Email"));
            this.setParameter("Sito Web",rs.getString("Sito Web"));
            this.setParameter("Funzionale Firma Convenzione",rs.getString("Funzionale Firma Convenzione"));
            this.setParameter("Posizione Ricoperta",rs.getString("Posizione Ricoperta"));
            this.setParameter("N_Dipendenti",""+rs.getInt("N_Dipendenti"));
            this.setParameter("Tutor Aziendale",rs.getString("Tutor Aziendale"));
        } catch (SQLException ex) {
            Logger.getLogger(Tutor.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void setAttribute(HttpServletRequest request) {
        try {
            request.getSession().setAttribute("Denominazione",this.getParameter("Denominazione"));
            request.getSession().setAttribute("Indirizzo",this.getParameter("Indirizzo"));
            request.getSession().setAttribute("Citta",this.getParameter("Citta"));
            request.getSession().setAttribute("C.A.P.",this.getParameter("C.A.P."));
            request.getSession().setAttribute("Telefono",this.getParameter("Telefono"));
            request.getSession().setAttribute("Fax",this.getParameter("Fax"));
            request.getSession().setAttribute("C.F/P.IVA",this.getParameter("C.F/P.IVA"));
            request.getSession().setAttribute("Email",this.getParameter("Email"));
            request.getSession().setAttribute("Sito Web",this.getParameter("Sito Web"));
            request.getSession().setAttribute("Funzionale Firma Convenzione",this.getParameter("Funzionale Firma Convenzione"));
            request.getSession().setAttribute("Posizione Ricoperta",this.getParameter("Posizione Ricoperta"));
            request.getSession().setAttribute("N_Dipendenti",this.getParameter("N_Dipendenti"));
            request.getSession().setAttribute("Tutor Aziendale",this.getParameter("Tutor Aziendale"));
        } catch (Exception_user ex) {
            Logger.getLogger(Azienda.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
