package it.unimol.tirocinio.utils.db;

/**
 * Qui Vengono Salvati i riferimenti per la generica connessione al Database
 * 
 * @author Roberto
 */
public class Config {
    
    static private final String db_host = "localhost";
    static private final String db_user = "root";
    static private final String db_pswd = "";
    static private final String db_name = "accessi";  //da cambiare
    
    static public String getDb_host(){
        return db_host;
    }
    
    static public String getDb_user(){
        return db_user;
    }
    
    static public String getDb_pswd(){
        return db_pswd;
    }
    
    static public String getDb_name(){
        return db_name;
    }
    
}
