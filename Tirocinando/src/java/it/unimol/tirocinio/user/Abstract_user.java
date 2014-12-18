package it.unimol.tirocinio.user;

import it.unimol.tirocinio.user.Config.*;
import java.util.HashMap;

/**
 * @author roberto
 */
public class Abstract_user {
    
    private User_Type type;
    private HashMap<String, String> UserData;
    
    public Abstract_user(User_Type ptype) {
        ptype = this.type;
        UserData = new HashMap<>();
    }
    
    public String getParameter(String str) throws Exception_user{
        if(!this.UserData.containsKey(str))
            throw new Exception_user("Campo Utente inesistente");
        return this.UserData.get(str);
    }
    
    public void setParameter(String key, String value) throws Exception_user {
        if(!this.UserData.containsKey(key))
            throw new Exception_user("Campo Utente inesistente");
        this.UserData.put(key, value);
    }
    
}
