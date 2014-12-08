package it.unimol.tirocinio.utils.document;

/**
 * @author VittorioBarile
 */

public class Config {
    
    private static String[] field_Studente = {"Corso di laurea in","Cognome","Nome"};
    private static String[] field_Azienda = {"Corso di laurea in","Cognome","Nome"};
    private static String[] field_Tutor = {"Corso di laurea in","Cognome","Nome"};
    
    
    
public enum documentType {
    STUDENTE,
    AZIENDA,
    TUTOR
};
    
    
    
public static String[] getField(documentType pDocument) {

    switch(pDocument) {
        case STUDENTE:
            return field_Studente;
        case AZIENDA:
            return field_Azienda;
        case TUTOR:
            return field_Tutor;

        default: return null;
    } 
}

}
