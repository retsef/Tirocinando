package it.unimol.tirocinio.utils.db;

/**
 * @author Roberto
 */

import java.sql.*;

public class Connector {
    
    private Connection conn;
    private ResultSet result;
    private Statement statement;
    
    private Boolean status_conn;
    
    private String db_host;
    private String db_user;
    private String db_pswd;
    private String db_name;
    
    /**
     * Connector crea lo stream di connessione con il protocollo jdbc
     * 
     * @param host indirizzo del database
     * @param username Username per il database
     * @param password Password per il database
     * @param db Nome del database
     */
    public Connector(String host, String username, String password, String db){
        this.status_conn = false;
        
        this.db_host = host;
        this.db_user = username;
        this.db_pswd = password;
        this.db_name = db;
    }
    
    /**
     * Connessione al database
     * 
     * @throws java.lang.ClassNotFoundException
     * @throws java.lang.InstantiationException
     * @throws java.lang.IllegalAccessException
     * @throws java.sql.SQLException Dipendendo da jdbc e' vincolato da ogni sua eccezione
     * @throws it.unimol.tirocinio.utils.db.Exception_db Nel caso la connessione fosse gia' istaurata
     */
    public void connect() throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException, Exception_db{
        if(!this.status_conn){
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://"+this.db_host+"/"+this.db_name;
            conn = DriverManager.getConnection(url, this.db_user, this.db_pswd);
            this.status_conn = true;
        } else 
            throw new Exception_db("La connessione al Database e' gia' attiva");
    }
    
    /**
     * Disconnessione dal database
     * 
     * @throws java.sql.SQLException Dipendendo da jdbc e' vincolato da ogni sua eccezione
     * @throws it.unimol.tirocinio.utils.db.Exception_db Nel caso la connessione non fosse istaurata
     */
    public void disconnect() throws SQLException, Exception_db{
        if(this.status_conn){
            conn.close();
            this.status_conn = false;
        } else 
            throw new Exception_db("La connessione al Database e' gia' disattivata");
    }
    
    /**
     * In jdbc le query contenenti delle SELECT o simili possono essere eseguite con il costrutto standard
     * 
     * @param query La query formale in SQL
     * @throws SQLException Dipendendo da jdbc e' vincolato da ogni sua eccezione
     * @throws Exception_db Nel caso la connessione non fosse istaurata
     */
    public void execQuery(String query) throws SQLException, Exception_db{
        if(this.status_conn){
            this.statement = conn.createStatement();
            this.result = this.statement.executeQuery(query);
        } else 
            throw new Exception_db("La connessione al Database non e' attiva");
    }
    
    /**
     * In jdbc le query contenenti degli INSERT, UPDATE, DELETE devono essere eseguite con questo costrutto
     * 
     * @param query La query formale in SQL
     * @throws SQLException Dipendendo da jdbc e' vincolato da ogni sua eccezione
     * @throws Exception_db Nel caso la connessione non fosse istaurata
     */
    public void execUpdate(String query) throws SQLException, Exception_db{
        if(this.status_conn){
            this.statement = conn.createStatement();
            this.statement.executeUpdate(query);
        } else 
            throw new Exception_db("La connessione al Database non e' attiva");
    }
    
    public ResultSet getResult(){
        return this.result;
    }
    
}
