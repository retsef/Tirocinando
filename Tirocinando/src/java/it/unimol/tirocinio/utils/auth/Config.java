package it.unimol.tirocinio.utils.auth;

/**
 * @author Roberto
 */
public class Config {
    
    //Nome Database in cui sono contenuti come tripla UID, id user e data_init_sessione
    static private final String db_name = "accessi";
    
    //Nome Tabella Database in cui sono contenuti come tripla UID, id user e data_init_sessione
    static private final String table_sessioni = "sessioni";
    static private final String table_utenti = "utenti";
    //Vista in SQL che unisce in una join la tabella utenti con quella delle sessioni
    static private final String table_instance = "user_session";
    //limite di tempo eccessivo per determinare se una sessione e' da considerarsi scaduta
    static private final int expire =  3600*24;
    
    /**
     * Statistiche per determinare lo stato della sessione
     */
    public enum STATISTICS {
        AUTH_LOGGED,
        AUTH_NOT_LOGGED,
        AUTH_INVALID_PARAMS,
        AUTH_LOGEDD_IN,
        AUTH_FAILED
    };
    
    /**
     * Metodi di instaurazione della sessione tra cui:
     * Cookie: tramite cookie del browser
     * Link: come parametro url
     * Sessione: come Sessione (Object)
     */
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
