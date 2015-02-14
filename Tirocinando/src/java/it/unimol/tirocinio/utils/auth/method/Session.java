package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Config.User_Type;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.user.azienda.Azienda;
import it.unimol.tirocinio.user.studente.Studente;
import it.unimol.tirocinio.user.tutor.Tutor;
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
import javax.servlet.http.HttpSession;

/**
 * @author Roberto
 */
public class Session extends Abstract {

    private HttpSession session;
    private String uid = "";
    
    public Session(HttpSession psession) {
        super();
        this.session = psession;
    }
    
    @Override
    public void clean_expired() throws Exception_auth {
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
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Session.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String get_uid() {
        this.uid = (String) this.session.getAttribute("uid");
        return this.uid;
    }

    @Override
    public HashMap<STATISTICS, UUID> get_status() {
        try {
            this.clean_expired();
        } catch (Exception_auth ex) {
            //Logger.getLogger(Session.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            String temp_uid = this.get_uid();
            this.state = new HashMap<>();
            if(temp_uid.equals("")) {
                this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            }
            
            this.conn.select(Config.getTable_sessioni(),"*","uid = '"+ temp_uid +"'");
            
            if(this.conn.getNumResult() !=1) {
                this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            } else {
                this.state.put(STATISTICS.AUTH_LOGGED, UUID.fromString(temp_uid));
                return this.state;
            }
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Abstract.class.getName()).log(Level.SEVERE, null, ex);
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
        int time = (int)(System.currentTimeMillis() / 1000l);
        
        String[] value = {};
        switch(pUser.getUserType()){
            case STUDENTE:
                String[] temp_S = { 
                this.uid, 
                Integer.toString(time),
                pUser.getParameter("Matricola"), 
                "NULL",
                "NULL"};
                value = temp_S;
                break;
            case AZIENDA:
                String[] temp_A = { 
                this.uid,
                Integer.toString(time), 
                "NULL",
                pUser.getParameter("idAzienda"),
                "NULL" };
                value = temp_A;
                break;
            case TUTOR:
                String[] temp_T = { 
                this.uid, 
                Integer.toString(time), 
                "NULL",
                "NULL",
                pUser.getParameter("idTutor") };
                value = temp_T;
                break;
        }
        try {
            if(value.length!=0)
                this.conn.insert(Config.getTable_sessioni(), value);
            int seconds = (int)(System.currentTimeMillis() / 1000l);
            this.session.setAttribute("uid", this.uid);
            this.session.setAttribute("creation_date", (int) (System.currentTimeMillis() + Config.getExpire()));
            
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Session.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void logout() {
        try {
            if(this.get_uid()!=null || !this.get_uid().equals(""))
                this.conn.delete(Config.getTable_sessioni(),"uid = '"+this.get_uid()+"'");
                //creare un cookie vuoto di rimpiazzo
                this.session.setAttribute("uid", "");
                this.session.setAttribute("creation_date", "");
        
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Session.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public Abstract_user check() throws Exception_auth {
        HashMap<STATISTICS, UUID> temp_status = this.get_status();
        
        if(temp_status.containsKey(STATISTICS.AUTH_LOGGED)) {
            try {
                User_Type type = this.guard.getUserType(temp_status.get(STATISTICS.AUTH_LOGGED));
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
