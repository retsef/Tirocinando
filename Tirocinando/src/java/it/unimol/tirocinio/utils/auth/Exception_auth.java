package it.unimol.tirocinio.utils.auth;

/**
 * @author Roberto
 */
public class Exception_auth extends Exception{
    
    public Exception_auth(String str) {
        super(str);
    }
    
    public Exception_auth() {
        super("Errore Autenticazione");
    }
    
}
