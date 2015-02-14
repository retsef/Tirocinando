package it.unimol.tirocinio.user.tutor;

/**
 * @author Roberto
 */
public class Token_Config {
    
    static private final String Table_name = "Token_tutor_registrazione";

    static private final int expire = 3600*48;
    
    public static String getTable_name() {
        return Table_name;
    }
    
    public static int getExpire() {
        return expire;
    }
    
}
