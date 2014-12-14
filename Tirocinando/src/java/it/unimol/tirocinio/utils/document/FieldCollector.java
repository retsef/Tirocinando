package it.unimol.tirocinio.utils.document;

import java.util.HashMap;
import it.unimol.tirocinio.utils.document.Config.documentType;

/**
 * @author VittorioBarile
 */

public class FieldCollector {
    
    public HashMap<String, String> Map;

    public HashMap<String, String> getMap() {
        return Map;
    }
    
    public FieldCollector(documentType pDoc, String[] pValue) throws Exception_doc {
    Map = new HashMap<>();
    
    if(pValue.length == Config.getField(pDoc).length) {
        for(int i=0; i<Config.getField(pDoc).length; i++) {
            Map.put(Config.getField(pDoc)[i], pValue[i]);
        }
    } else
        throw new Exception_doc("Impossibile comporre l'HasMap");
    
    }
    
}
