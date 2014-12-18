package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
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
    
    public Cookies(HttpServletRequest pRequest, HttpServletResponse pResponse) {
        super();
        this.request = pRequest;
        this.response = pResponse; 
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
    public HashMap<STATISTICS, UUID> get_status() {
        try {
            this.clean_expired();
            String temp_uid = this.get_uid();
            this.state = new HashMap<>();
            if(temp_uid==null || temp_uid.equals("")) {
                this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            }
            
            this.conn.select(Config.getTable_sessioni(),"*","uid = '"+ temp_uid +"'");
            
            if(this.conn.getNumResult() !=1) {
                this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            } else {
                //???
                return this.state;
            }
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return this.state;
    }

    @Override
    public Abstract_user login(String Username, String Password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void register_session() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void logout() {
        if(this.get_uid()!=null || this.get_uid().equals("")) {
            
        } else {
            try {
                this.conn.delete(Config.getTable_sessioni(),"uid = '"+this.get_uid()+"'");
            } catch (SQLException | Exception_db ex) {
                Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public HashMap<Config.STATISTICS, UUID> check() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
