package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Config.User_Type;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.user.azienda.Azienda;
import it.unimol.tirocinio.user.studente.Studente;
import it.unimol.tirocinio.user.tutor.Tutor;
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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Roberto
 */
public class Link extends Abstract {

    
    private String uid;
    private HttpServletRequest request;
    private HttpServletResponse response;
    
    public Link(HttpServletRequest pRequest, HttpServletResponse pResponse) {
        super();
        this.request = pRequest;
        this.response = pResponse; 
    }
    
    @Override
    public void clean_expired() throws Exception_auth {
        try {
            String t_uid = this.get_uid();
            this.conn.select(Config.getTable_sessioni(), "creation_date", "uid='"+t_uid+"'");
            if(this.conn.getNumResult()==1){
                ResultSet rs = this.conn.getResult();
                int creation_date = rs.getInt("creation_date");
                int seconds = (int)(System.currentTimeMillis() / 1000);
                if( creation_date + Config.getExpire() < seconds) {
                    //Nel caso in cui e' scaduto
                    request.setAttribute(uid, "");
                } else {
                    //this.cookie.setMaxAge((int) (System.currentTimeMillis() + Config.getExpire()));
                    //this.response.addCookie(this.cookie);
                }
            } else 
                throw new Exception_auth("Errore: Chiave di autenticazione univoca non trovata");
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String get_uid() throws Exception_auth{
        this.uid = null;
        if(request.getParameter("uid")!=null && !request.getParameter("uid").equals("")) {
            this.uid = request.getParameter("uid");
            return this.uid;
        } else if(request.getAttribute("uid")!=null && !request.getAttribute("uid").equals("")) {
            this.uid = (String) request.getAttribute("uid");
            return this.uid;
        } else 
            throw new Exception_auth("Chiave univoca non trovata");
        
    }

    @Override
    public HashMap<Config.STATISTICS, UUID> get_status() {
        try {
            this.clean_expired();
        } catch (Exception_auth ex) {
            //Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String temp_uid = this.get_uid();
            this.state = new HashMap<>();
            if(temp_uid.equals("")) {
                this.state.put(Config.STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            }
            
            this.conn.select(Config.getTable_sessioni(),"*","uid = '"+ temp_uid +"'");
            
            if(this.conn.getNumResult() !=1) {
                this.state.put(Config.STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            } else {
                this.state.put(Config.STATISTICS.AUTH_LOGGED, UUID.fromString(temp_uid));
                return this.state;
            }
        } catch (Exception_auth | SQLException | Exception_db ex) {
            Logger.getLogger(Link.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return this.state;
    }

    @Override
    public Abstract_user login(String Username, String Password) throws Exception_user {
        try {
            User_Type type = this.guard.getUserType(Username, Password);
            ResultSet rs = this.conn.getResult();
            
            Abstract_user user = null;
            switch(type){
                case STUDENTE:
                    user = new Studente();
                    break;
                case AZIENDA:
                    user = new Azienda();
                    break;
                case TUTOR:
                    user = new Tutor();
                    break;
            }
            if(user!=null){
                user.setIstance(rs);
                this.register_session(user);
                return user;
            } else 
                throw new Exception_user("Impossibile effettuare il Login!");
            
        } catch (Exception_db ex) {
            throw new Exception_user("Impossibile effettuare il Login!");
        }
    }

    @Override
    public void register_session(Abstract_user pUser) throws Exception_user {
        this.uid = this.generate_uid().toString();
        int time = (int) System.currentTimeMillis();
        String[] temp_value = { this.uid, pUser.getParameter("id"), Integer.toString(time) };
        try {
            this.conn.insert(Config.getTable_sessioni(), temp_value);
            request.setAttribute("uid", this.uid);
            
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void logout() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Abstract_user check() throws Exception_auth {
        HashMap<Config.STATISTICS, UUID> temp_status = this.get_status();
        
        if(temp_status.containsKey(Config.STATISTICS.AUTH_LOGGED)) {
            try {
                User_Type type = this.guard.getUserType(temp_status.get(Config.STATISTICS.AUTH_LOGGED));
                ResultSet rs = this.conn.getResult();
                
                Abstract_user user = null;
                switch(type){
                    case STUDENTE:
                        user = new Studente();
                        break;
                    case AZIENDA:
                        user = new Azienda();
                        break;
                    case TUTOR:
                        user = new Tutor();
                        break;
                }
                user.setIstance(rs);
                return user;
            } catch (Exception_user | Exception_db ex) {
                Logger.getLogger(Cookies.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else 
            throw new Exception_auth("Non esiste una sessione valida per esistente");
        return null;
    }
    
}
