package it.unimol.tirocinio.utils.db;

/**
 * Exception per la gestione del Database
 * 
 * @author Roberto
 */
public class Exception_db extends Exception{
    
    public Exception_db(String str) {
        super(str);
    }
    
    public Exception_db() {
        super("Errore nel Database");
    }
    
}
