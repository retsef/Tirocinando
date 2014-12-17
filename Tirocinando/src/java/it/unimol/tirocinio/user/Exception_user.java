package it.unimol.tirocinio.user;

/**
 * @author roberto
 */
public class Exception_user extends Exception {
    
    public Exception_user(String msg) {
        super(msg);
    }
    
    public Exception_user() {
        super("Errore creazione Utente");
    }
    
}
