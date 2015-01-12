package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.utils.auth.Config.AUTH_METHOD;
import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
import it.unimol.tirocinio.utils.auth.method.*;
import java.util.HashMap;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Roberto
 */
public class Manager extends Abstract {
    
    private AUTH_METHOD method;
    
    private Cookies cookie;
    private Link link;
    private Session session;
    
    public Manager(HttpServletRequest request, HttpServletResponse response) {
        super();
        
        this.cookie = new Cookies(request, response);
        this.link = new Link(request, response);
        this.session = new Session(request.getSession());
        
        //metodo predefinito
        this.method = AUTH_METHOD.AUTH_USE_COOKIE;
        
        this.state = new HashMap<>();
        this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
    }
    
    /**
     * Imposta il metodo di Autenticazione
     * @param method
     */
    public void set_method(AUTH_METHOD method){
        this.method = method;
    }
    
    public String get_method(){
        return this.method.toString();
    }

    @Override
    public void clean_expired() throws Exception_auth {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.clean_expired();
                break;
            case AUTH_USE_LINK:
                this.link.clean_expired();
                break;
            case AUTH_USE_SESSION:
                this.session.clean_expired();
                break;
        }
    }

    @Override
    public String get_uid() throws Exception_auth{
        switch(this.method){
            case AUTH_USE_COOKIE:
                return this.cookie.get_uid();
            case AUTH_USE_LINK:
                return this.link.get_uid();
            case AUTH_USE_SESSION:
                return this.session.get_uid();
            default:
                return null;
        }
    }

    @Override
    public HashMap<STATISTICS, UUID> get_status() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                return this.cookie.get_status();
            case AUTH_USE_LINK:
                return this.link.get_status();
            case AUTH_USE_SESSION:
                return this.session.get_status();
            default:
                return null;
        }
    }

    @Override
    public Abstract_user login(String Username, String Password) throws Exception_user {
        switch(this.method){
            case AUTH_USE_COOKIE:
                return this.cookie.login(Username, Password);
            case AUTH_USE_LINK:
                return this.link.login(Username, Password);
            case AUTH_USE_SESSION:
                return this.session.login(Username, Password);
            default:
                return null;
        }
    }

    @Override
    public UUID generate_uid() {
        return super.generate_uid(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void register_session(Abstract_user pUser) throws Exception_user {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.register_session(pUser);
                break;
            case AUTH_USE_LINK:
                this.link.register_session(pUser);
                break;
            case AUTH_USE_SESSION:
                this.session.register_session(pUser);
                break;
        }
    }

    @Override
    public void logout() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.logout();
                break;
            case AUTH_USE_LINK:
                this.link.logout();
                break;
            case AUTH_USE_SESSION:
                this.session.logout();
                break;
        }
    }

    @Override
    public Abstract_user check() throws Exception_auth {
        switch(this.method){
            case AUTH_USE_COOKIE:
                return this.cookie.check();
            case AUTH_USE_LINK:
                return this.link.check();
            case AUTH_USE_SESSION:
                return this.session.check();
            default:
                return null;
        }
    }
    
    
    
}
