package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.user.Exception_user;
import it.unimol.tirocinio.user.Permission;
import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
import it.unimol.tirocinio.utils.db.Adapter;
import it.unimol.tirocinio.utils.db.Exception_db;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Roberto
 */
public abstract class Abstract {
    
    public Adapter conn;
    public Permission guard;
    //Coppia di Identificativo di stato e chiave univoca della sessione
    public HashMap<STATISTICS, UUID> state;
    
    /**
     * Di default crea una connessione al Database secondo le configurazioni contenute nella classe Config dello stesso namespace
     */
    public Abstract() {
        this.conn = new Adapter(Config.getDb_name());
        this.guard = new Permission(this.conn);
    }
    
    /**
     * Cancella Sessioni scadute
     */
    abstract public void clean_expired() throws Exception_auth;
    
    /**
     * Restituisce lo status della sessione
     * 
     * @return Coppia di Identificativo di stato e chiave univoca della sessione
     */
    public HashMap<STATISTICS, UUID> get_status() {
        try {
            this.clean_expired();
            String temp_uid = this.get_uid();
            this.state = new HashMap<>();
            if(temp_uid==null || temp_uid.equals("")) {
                this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            }
            
            this.conn.select(Config.getTable_sessioni(),"*","uid = '"+ temp_uid +"'");
            
            if(this.conn.getNumResult() !=1) {
                this.state.put(STATISTICS.AUTH_NOT_LOGGED, null);
                return this.state;
            } else {
                this.state.put(STATISTICS.AUTH_LOGGED, UUID.fromString(temp_uid));
                return this.state;
            }
        } catch (SQLException | Exception_db | Exception_auth ex) {
            Logger.getLogger(Abstract.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return this.state;
    }
    
    /**
     * Login
     * 
     * @param Username
     * @param Password
     * @return Istanza dell'utente loggato (il Bean per intenderci ma piu' FIGO!)
     * @throws it.unimol.tirocinio.user.Exception_user
     */
    abstract public Abstract_user login(String Username, String Password) throws Exception_user;
    
    /**
     * L'identificativo univoco universale (universally unique identifier o UUID) è un identificativo standard usato nelle infrastrutture software, 
     * standardizzato dalla Open Software Foundation (OSF) come parte di un ambiente distribuito di computazione.
     * 
     * Lo scopo dell'UUID è di abilitare un sistema distribuito all'identificazione di informazioni in assenza di un sistema centralizzato di coordinamento. 
     * In questo contesto la chiave univoca dovrebbe implicare "l'univocità" pratica senza "garantirla". 
     * Il fatto che le chiavi siano in numero finito implica che due entità potrebbero avere la stessa chiave identificativa. 
     * In pratica, l'ampiezza dello spazio delle chiavi e il loro processo di generazione offrono sufficienti garanzie che la stessa chiave non venga assegnata a due entità differenti.
     * 
     * @return UUID come chiave univoca
     */
    public UUID generate_uid() {
        return UUID.randomUUID();
    }
    
    /**
     * Restituisce l'uid
     * 
     * @return UUID come stringa
     * @throws it.unimol.tirocinio.utils.auth.Exception_auth
     */
    abstract public String get_uid() throws Exception_auth;
    
    abstract public void register_session(Abstract_user pUser) throws Exception_user;
    
    /**
     * Distrugge la sessione dell'utente
     */
    abstract public void logout();
    
    /**
     * Controlla se esiste l'istanza della sessione utente
     * 
     * @return Istanza dell'utente loggato (il Bean per intenderci ma piu' FIGO!)
     * @throws it.unimol.tirocinio.utils.auth.Exception_auth
     */
    abstract public Abstract_user check() throws Exception_auth;
    
}
