package it.unimol.tirocinio.utils.auth.method;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.utils.auth.Abstract;
import it.unimol.tirocinio.utils.auth.Config;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import java.util.HashMap;
import java.util.UUID;
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String get_uid() throws Exception_auth{
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
