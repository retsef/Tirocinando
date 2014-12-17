package it.unimol.tirocinio.utils.auth;

/**
 * @author Roberto
 */
public class Config {
    
    static private final String db_name = "accessi";
    
    static private final String table_sessioni = "sessioni";
    static private final String table_utenti = "utenti";
    
    static private final String table_instance = "user_session";
    static private final int expire =  3600*24;
    
    public enum STATISTICS {
        AUTH_LOGGED,
        AUTH_NOT_LOGGED,
        AUTH_INVALID_PARAMS,
        AUTH_LOGEDD_IN,
        AUTH_FAILED
    };
    
    public enum AUTH_METHOD {
        AUTH_USE_COOKIE,
        AUTH_USE_LINK,
        AUTH_USE_SESSION
    };

    public static String getDb_name() {
        return db_name;
    }

    public static String getTable_sessioni() {
        return table_sessioni;
    }

    public static String getTable_utenti() {
        return table_utenti;
    }

    public static String getTable_instance() {
        return table_instance;
    }

    public static int getExpire() {
        return expire;
    }
    
    
    
}
