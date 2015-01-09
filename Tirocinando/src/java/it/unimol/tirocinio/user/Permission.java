package it.unimol.tirocinio.user;

import it.unimol.tirocinio.user.Config.User_Type;
import it.unimol.tirocinio.utils.db.Adapter;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author roberto
 */
public class Permission  {
    
    private Adapter conn;
    
    public Permission(Adapter adapt) {
        conn = adapt;
    }
    
    public User_Type getUserType(String Username, String Password) throws Exception_user, Exception_db {
        try {
            this.conn.select("Studenti","*", "username='"+Username+"' and password='"+Password+"'");
            if(this.conn.getNumResult()==1){
                return User_Type.STUDENTE;
            }
            this.conn.select("Azienda","*", "username='"+Username+"' and password='"+Password+"'");
            if(this.conn.getNumResult()==1){
                return User_Type.AZIENDA;
            }
            this.conn.select("Tutor","*", "username='"+Username+"' and password='"+Password+"'");
            if(this.conn.getNumResult()==1){
                return User_Type.TUTOR;
            }
            throw new Exception_user("Non esistono utenti con Username e Password corrispondenti!");
            
        } catch (SQLException ex) {
            Logger.getLogger(Permission.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //Salvarsi il result set prima del retrun
    public User_Type getUserType(UUID uid) throws Exception_user, Exception_db {
        try {
            this.conn.select(it.unimol.tirocinio.utils.auth.Config.getTable_instance_student() ,"*", "uid='"+uid.toString()+"'");
            if(this.conn.getNumResult()==1){
                return User_Type.STUDENTE;
            }
            this.conn.select(it.unimol.tirocinio.utils.auth.Config.getTable_instance_azienda() ,"*", "uid='"+uid.toString()+"'");
            if(this.conn.getNumResult()==1){
                return User_Type.AZIENDA;
            }
            this.conn.select(it.unimol.tirocinio.utils.auth.Config.getTable_instance_tutor() ,"*", "uid='"+uid.toString()+"'");
            if(this.conn.getNumResult()==1){
                return User_Type.TUTOR;
            }
            throw new Exception_user("Non esistono utenti con UUID corrispondente!");
            
        } catch (SQLException ex) {
            Logger.getLogger(Permission.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
