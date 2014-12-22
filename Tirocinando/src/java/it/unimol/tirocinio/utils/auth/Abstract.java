package it.unimol.tirocinio.utils.auth;

import it.unimol.tirocinio.user.Abstract_user;
import it.unimol.tirocinio.utils.auth.Config.STATISTICS;
import it.unimol.tirocinio.utils.db.Adapter;
import java.util.HashMap;
import java.util.UUID;

/**
 * @author Roberto
 */
public abstract class Abstract {
    
    public Adapter conn;
    //Coppia di Identificativo di stato e chiave univoca della sessione
    public HashMap<STATISTICS, UUID> state;
    
    /**
     * Di default crea una connessione al Database secondo le configurazioni contenute nella classe Config dello stesso namespace
     */
    public Abstract() {
        this.conn = new Adapter(Config.getDb_name());
    }
    
    /**
     * Cancella Sessioni scadute
     */
    abstract public void clean_expired();
    
    /**
     * Restituisce lo status della sessione
     * 
     * @return Coppia di Identificativo di stato e chiave univoca della sessione
     */
    abstract public HashMap<STATISTICS, UUID> get_status();
    
    /**
     * Login
     * 
     * @param Username
     * @param Password
     * @return Istanza dell'utente loggato (il Bean per intenderci ma piu' FIGO!)
     */
    abstract public Abstract_user login(String Username, String Password);
    
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
     */
    abstract public String get_uid();
    
    abstract public void register_session();
    
    /**
     * Distrugge la sessione dell'utente
     */
    abstract public void logout();
    
    /**
     * Controlla se esiste l'istanza della sessione utente
     * 
     * @return Istanza dell'utente loggato (il Bean per intenderci ma piu' FIGO!)
     */
    abstract public Abstract_user check();
    
}
