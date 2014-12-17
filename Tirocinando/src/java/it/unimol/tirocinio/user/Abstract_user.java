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
    
    public String getParameter(String str){
        return "";
    }
    
}
