package it.unimol.tirocinio.user.tutor;

import java.util.UUID;

/**
 * Genera Token per la registrazione del Tutor Accademico
 * @author Roberto
 */
public class Token {
    
    private UUID token;
    
    public Token() { }
    
    public Token(UUID tok) { this.token = tok; }
    
    public void generate_token() { this.token = UUID.randomUUID(); }
    
    public UUID get() { return this.token; }
    
}
