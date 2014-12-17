package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import it.unimol.tirocinio.utils.auth.Servlet_auth;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Roberto
 */
public class Cookies extends Abstract {

    private Cookie cookie;
    private String uid;
    private HttpServletRequest request;
    private HttpServletResponse response;
    
    public Cookies() {
        super();
        request = Servlet_auth.getRequest();
        response = Servlet_auth.getResponse();
        
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
                        this.cookie = new Cookie("uid","");
                        this.response.addCookie(this.cookie);
                    } else {
                        this.cookie.setMaxAge((int) (System.currentTimeMillis() + Config.getExpire()));
                        this.response.addCookie(this.cookie);
                    }
                }
            } else 
                throw new Exception_auth("Errore: Chiave di autenticazione univoca non trovata");
        } catch (SQLException | Exception_db | Exception_auth ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String get_uid() {
        Cookie[] cookies = request.getCookies();

        uid = null;
        for(Cookie cook : cookies){
            if("uid".equals(cook.getName())){
                uid = cook.getValue();
            }
        }
        
        return uid;
    }

    @Override
    public void get_status() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void login() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void register_session() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void logout() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public HashMap<Config.STATISTICS, UUID> check() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
