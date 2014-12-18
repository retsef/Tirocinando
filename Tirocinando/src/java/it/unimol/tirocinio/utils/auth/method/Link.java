package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Servlet_auth;
import java.util.HashMap;
import java.util.UUID;
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
    public String get_uid() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public HashMap<Config.STATISTICS, UUID> get_status() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public HashMap<Config.STATISTICS, UUID> check() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
