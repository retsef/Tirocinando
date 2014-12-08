package it.unimol.tirocinio.utils.db;

import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Questa classe formalizza l'esecuzione delle query SQL:
 * SELECT,INSERT,DELETE
 * 
 * @author Roberto
 */
public class Adapter {
    
    private Connector db_manager;
    
    /**
     * Il costrutto di classe crea automaticamente lo stream di connessione
     */
    public Adapter(){
        this.db_manager = new Connector(Config.getDb_host(), 
                                        Config.getDb_user(), 
                                        Config.getDb_pswd(), 
                                        Config.getDb_name());
        try {
            this.db_manager.connect();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException | Exception_db ex) {
            Logger.getLogger(Adapter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public Adapter(String db){
        this.db_manager = new Connector(Config.getDb_host(), 
                                        Config.getDb_user(), 
                                        Config.getDb_pswd(), 
                                        db);
        try {
            this.db_manager.connect();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException | Exception_db ex) {
            Logger.getLogger(Adapter.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Formalizza la query select
     * select("tabella","col1,col2,col3","row1=1","col1");
     * 
     * nb: c'e' il controllo sull'esistenza della tabella ed e' fatta secondo la singola
     * @param table Tabella in cui si esegue la query
     * @param rows Colonne da includere nel risultato
     * @param where Condizioni della query
     * @param order Condizione di rdinamento
     * @throws SQLException Essendo una chiamata SQL e' vincolata dalle eccezioni di jdbc
     * @throws Exception_db Puo' verificarsi nel caso in cui la tabella non esite
     */
    public void select(String table, String rows, String where, String order) throws SQLException, Exception_db{
        String query = "SELECT "+rows+" FROM "+table;
        if(where!=null)
            query += " WHERE "+where;
        if(order!=null)
            query += " ORDER BY "+order;
        if(this.TableExist(table)){
            this.db_manager.execQuery(query);
        } else
            throw new Exception_db("La tabella inclusa nella query non Esiste");
    }
    
    public void select(String table, String rows, String where) throws SQLException, Exception_db{
        this.select(table, rows, where, null);
    }
    
    public void select(String table, String rows) throws SQLException, Exception_db{
        this.select(table, rows, null, null);
    }
    
    public void select(String table) throws SQLException, Exception_db{
        this.select(table, "*", null, null);
    }
    
    /**
     * 
     * @param table
     * @param values
     * @param rows
     * @throws SQLException
     * @throws Exception_db 
     */
    public void insert(String table, String[] values, String rows) throws SQLException, Exception_db{
        String query = "INSERT INTO "+table;
        if(rows!=null)
            query += " ("+rows+") ";
        query += " VALUES (\'"+implode("\',\'", values)+"\')";
        if(this.TableExist(table)){
            this.db_manager.execUpdate(query);
        } else
            throw new Exception_db("La tabella inclusa nella query non Esiste");
    }
    
    public void insert(String table, String[] values) throws SQLException, Exception_db{
        this.insert(table, values, null);
    }
    
    public void delete(String table,String where) throws SQLException, Exception_db{
        String query;
        if(this.TableExist(table)) {
            if(where == null) 
                query = "DELETE "+table;
            else 
                query = "DELETE FROM "+table+" WHERE "+where;
            this.db_manager.execUpdate(query);
        } else 
            throw new Exception_db("La tabella inclusa nella query non Esiste");
    }
    
    public void delete(String table) throws SQLException, Exception_db{
        this.delete(table, null);
    }
    
    public int getNumResult() throws SQLException{
        this.getResult().last();
        return this.getResult().getRow();
    }
    
    public ResultSet getResult() {
        return db_manager.getResult();
    }
    
    /**
     * Controlla se una Tabella esiste nel database
     * @param table Tabella da Verificare
     * @return Booleano di esito
     * @throws SQLException
     * @throws Exception_db 
     */
    private boolean TableExist(String table) throws SQLException, Exception_db{
        String query = "SHOW TABLES FROM "+Config.getDb_name()+" LIKE \'"+table+"\'";
        this.db_manager.execQuery(query);
        
        this.getResult().last();
        return this.getResult().getRow()==1;
    }
    
    private static String implode(String glue, String[] strArray) {
        String ret = "";
        for(int i=0;i<strArray.length;i++){
            ret += (i == strArray.length - 1) ? strArray[i] : strArray[i] + glue;
        }
        return ret;
    }
    
}
