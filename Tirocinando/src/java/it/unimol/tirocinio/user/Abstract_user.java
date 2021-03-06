package it.unimol.tirocinio.user;

import it.unimol.tirocinio.user.Config.*;
import java.sql.ResultSet;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;

/**
 * Definisce l'istanza dell'utente immagazzinando i suoi attributi
 * Si ispira ai JavaBean, ovvero traposizioni di dati SQL su oggetti java, ma ne semplifica l'utilizzo/organizzazione
 * 
 * @author roberto
 */
public abstract class Abstract_user {
    
    //identificatore di tipo di utente connesso
    private User_Type type;
    //Collezione di coppie di dati corredati da nome identificativo
    private HashMap<String, String> UserData;
    
    public Abstract_user(User_Type ptype) {
        this.type = ptype;
        this.UserData = new HashMap<>();
    }
    
    abstract public void setIstance(ResultSet rs) throws Exception_user;
    
    abstract public void setAttribute(HttpServletRequest request);
    
    public User_Type getUserType()  {
        return this.type;
    }
    /**
     * Restituisce un Parametro
     * @param key chiave con cui il dato e' rintracciabile nella collezione
     * @return il parametro richiesto
     * @throws Exception_user Nel caso non esita un dato con quella chiave
     */
    public String getParameter(String key) throws Exception_user{
        if(!this.UserData.containsKey(key))
            throw new Exception_user("Campo Utente inesistente");
        return this.UserData.get(key);
    }
    
    /**
     * Setta un Parametro
     * @param key chiave con cui il dato e' rintracciabile nella collezione
     * @param value valore del parametro
     * @throws Exception_user Nel caso non esita un dato con quella chiave
     */
    public void setParameter(String key, String value) throws Exception_user {
        //if(!this.UserData.containsKey(key))
        //    throw new Exception_user("Campo Utente inesistente");
        this.UserData.put(key, value);
    }
    
}
