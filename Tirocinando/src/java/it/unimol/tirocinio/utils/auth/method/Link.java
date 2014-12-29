package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import it.unimol.tirocinio.utils.db.Exception_db;
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
    public void clean_expired() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        return super.get_status();
    }

    @Override
    public Abstract_user login(String Username, String Password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
