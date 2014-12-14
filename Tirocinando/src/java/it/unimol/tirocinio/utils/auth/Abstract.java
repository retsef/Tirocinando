package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
import it.unimol.tirocinio.utils.auth.Exception_auth;
import it.unimol.tirocinio.utils.db.Adapter;
import java.util.HashMap;
import java.util.UUID;

/**
 * @author Roberto
 */
public abstract class Abstract {
    
    public Adapter conn;
    public HashMap<STATISTICS, UUID> state;
    
    public Abstract() {
        this.conn = new Adapter(Config.getDb_name());
    }
    
    abstract public void clean_expired();
    
    abstract public void get_status();
    
    abstract public void login();
    
    /**
     * L'identificativo univoco universale (universally unique identifier o UUID) è un identificativo standard usato nelle infrastrutture software, 
     * standardizzato dalla Open Software Foundation (OSF) come parte di un ambiente distribuito di computazione.
     * 
     * Lo scopo dell'UUID è di abilitare un sistema distribuito all'identificazione di informazioni in assenza di un sistema centralizzato di coordinamento. 
     * In questo contesto la chiave univoca dovrebbe implicare "l'univocità" pratica senza "garantirla". 
     * Il fatto che le chiavi siano in numero finito implica che due entità potrebbero avere la stessa chiave identificativa. 
     * In pratica, l'ampiezza dello spazio delle chiavi e il loro processo di generazione offrono sufficienti garanzie che la stessa chiave non venga assegnata a due entità differenti.
     * 
     * @return UUID
     */
    public UUID generate_uid() {
        return UUID.randomUUID();
    }
    
    abstract public String get_uid();
    
    abstract public void register_session();
    
    abstract public void logout();
    
    abstract public HashMap<STATISTICS, UUID> check();
    
}
