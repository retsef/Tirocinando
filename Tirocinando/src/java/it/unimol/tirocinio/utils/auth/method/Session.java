package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 * @author Roberto
 */
public class Session extends Abstract {

    private HttpSession session;
    
    public Session(HttpSession psession) {
        super();
        this.session = psession;
    }
    
    @Override
    public void clean_expired() {
        try {
            this.conn.select(Config.getTable_sessioni(), "creation_date", "uid='"+this.get_uid()+"'");
            if(this.conn.getNumResult()==1){
                ResultSet rs = this.conn.getResult();
                while(rs.next()){
                    int creation_date = Integer.getInteger(rs.getString("creation_date"));
                    if( creation_date + Config.getExpire() < System.currentTimeMillis()) {
                        this.session.setAttribute("uid", "");
                        this.session.setAttribute("creation_date", "");
                    } else {
                        this.session.setAttribute("creation_date", (int) (System.currentTimeMillis() + Config.getExpire()));
                        this.session.setAttribute("uid", "");
                    }
                }
            } else 
                throw new Exception_auth("Errore: Chiave di autenticazione univoca non trovata");
        } catch (SQLException | Exception_db | Exception_auth ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String get_uid() throws Exception_auth{
        return (String) this.session.getAttribute("uid");
    }

    @Override
    public HashMap<Config.STATISTICS, UUID> get_status() {
        return super.get_status();
    }

    @Override
    public Abstract_user login(String Username, String Password) throws Exception_user {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void register_session(Abstract_user pUser) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void logout() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Abstract_user check() throws Exception_auth {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
