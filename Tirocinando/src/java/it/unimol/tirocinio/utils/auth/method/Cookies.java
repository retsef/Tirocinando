package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
import it.unimol.tirocinio.utils.auth.Exception_auth;
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
    public String get_uid() throws Exception_auth{
        Cookie[] cookies = request.getCookies();

        this.uid = null;
        for(Cookie cook : cookies){
            if("uid".equals(cook.getName())){
                this.uid = cook.getValue();
                return this.uid;
            } 
        }
        
        throw new Exception_auth("Chiave univoca non trovata");
    }

    @Override
    public HashMap<STATISTICS, UUID> get_status() {
        return super.get_status();
    }

    @Override
    public Abstract_user login(String Username, String Password) throws Exception_user {
        
        /**
         * la funzione di controllo e' questa:
         * this.conn.select(Config.getTable_utenti(),"*", "username='"+Username+"' and password='"+Password+"'");
         * 
         * Ma non esiste un unico Table_utenti, ne possono esistere 3!
         */
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        
    }

    @Override
    public void register_session(Abstract_user pUser) throws Exception_user {
        this.uid = this.generate_uid().toString();
        int time = (int) System.currentTimeMillis();
        String[] temp_value = { this.uid, pUser.getParameter("id"), Integer.toString(time) };
        try {
            this.conn.insert(Config.getTable_sessioni(), temp_value);
            
            this.cookie = new Cookie("uid",this.uid);
            this.cookie.setMaxAge((int) (System.currentTimeMillis() + Config.getExpire()));
            this.response.addCookie(this.cookie);
            
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void logout() {
        try {
            if(this.get_uid()!=null || !this.get_uid().equals(""))
                this.conn.delete(Config.getTable_sessioni(),"uid = '"+this.get_uid()+"'");
                //creare un cookie vuoto di rimpiazzo
                this.cookie = new Cookie("uid","");
                this.response.addCookie(this.cookie);
        
        } catch (SQLException | Exception_db | Exception_auth ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Abstract_user check() throws Exception_auth {
        HashMap<STATISTICS, UUID> temp_status = this.get_status();
        
        if(temp_status.containsKey(STATISTICS.AUTH_LOGGED)) {
            Abstract_user temp_user = null;
            /**
             * Creazione Abstract_user
             */
            return temp_user;
        } else 
            throw new Exception_auth("Non esiste una sessione valida pre esistente");
    }

    
}
