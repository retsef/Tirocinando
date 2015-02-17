package it.unimol.tirocinio.user.tutor;

/**
 * @author Roberto
 */
public class Token_Config {
    
    static private final String Table_token = "Token_tutor_assign";

    static private final int expire = 3600*48;
    
    public static String getTable_token() {
        return Table_token;
    }
    
    public static int getExpire() {
        return expire;
    }
    
}
