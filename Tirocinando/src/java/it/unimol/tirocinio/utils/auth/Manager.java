package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.utils.auth.Config.AUTH_METHOD;
import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
import it.unimol.tirocinio.utils.auth.method.*;
import java.util.HashMap;
import java.util.UUID;

/**
 * @author Roberto
 */
public class Manager extends Abstract {
    
    private AUTH_METHOD method;
    
    private Cookie cookie;
    private Link link;
    private Session session;
    
    public Manager(){
        super();
        
        this.cookie = new Cookie();
        this.link = new Link();
        this.session = new Session(Servlet_auth.getRequest().getSession());
        
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
    public void clean_expired() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.clean_expired();
            case AUTH_USE_LINK:
                this.link.clean_expired();
            case AUTH_USE_SESSION:
                this.session.clean_expired();
        }
    }

    @Override
    public int get_uid() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                return this.cookie.get_uid();
            case AUTH_USE_LINK:
                return this.link.get_uid();
            case AUTH_USE_SESSION:
                return this.session.get_uid();
        }
        return 0;
    }

    @Override
    public void get_status() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.get_status();
            case AUTH_USE_LINK:
                this.link.get_status();
            case AUTH_USE_SESSION:
                this.session.get_status();
        }
    }

    @Override
    public void login() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.login();
            case AUTH_USE_LINK:
                this.link.login();
            case AUTH_USE_SESSION:
                this.session.login();
        }
    }

    @Override
    public UUID generate_uid() {
        return super.generate_uid(); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void register_session() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.register_session();
            case AUTH_USE_LINK:
                this.link.register_session();
            case AUTH_USE_SESSION:
                this.session.register_session();
        }
    }

    @Override
    public void logout() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.logout();
            case AUTH_USE_LINK:
                this.link.logout();
            case AUTH_USE_SESSION:
                this.session.logout();
        }
    }

    @Override
    public void check() {
        switch(this.method){
            case AUTH_USE_COOKIE:
                this.cookie.check();
            case AUTH_USE_LINK:
                this.link.check();
            case AUTH_USE_SESSION:
                this.session.check();
        }
    }
    
    
    
}
