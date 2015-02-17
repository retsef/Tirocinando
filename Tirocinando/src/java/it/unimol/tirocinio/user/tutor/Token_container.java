package it.unimol.tirocinio.user.tutor;

import it.unimol.tirocinio.utils.db.Adapter;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Salva nel Database un token e controlla se viene richiesto per la convalida
 * @author Roberto
 */
public class Token_container {
    
    private Adapter conn;
    private Token token;
    
    public Token_container() {
        conn = new Adapter();
    }
    
    /**
     * Imagazzina un token e la data in cui viene memorizzato per l'eventuale scadenza
     * DA FIXARE!!!
     * @param tok 
     */
    public void store_token(Token tok) {
        String str = tok.get().toString();
        int seconds = (int)(System.currentTimeMillis() / 1000l);
        String[] value = {str, seconds+""};
        try {
            conn.insert(Token_Config.getTable_token(), value);
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Token_container.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void store_new_token() {
        token = new Token();
        this.store_token(token);
    }
    
    public Token get_Token() {
        return this.token;
    }
    
    public void clear_expired() {
        try {
            this.conn.select(Token_Config.getTable_token());
            if(this.conn.getNumResult()>=1){
                ResultSet rs = this.conn.getResult();
                int creation_date = rs.getInt("creation_date");
                int seconds = (int)(System.currentTimeMillis() / 1000);
                if( creation_date + Token_Config.getExpire() < seconds) {
                    this.conn.delete(Token_Config.getTable_token(), "token = "+rs.getString("token"));
                }
            }
        } catch (SQLException | Exception_db ex) {
            Logger.getLogger(Token_container.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean is_present(Token tok) {
        
        return false;
    }
    
}
