package it.unimol.tirocinio.utils.document;

import java.util.HashMap;
import it.unimol.tirocinio.utils.document.Config.documentType;
/**
 * @author VittorioBarile
 */


public class FieldCollector {
    
    
    public HashMap<String, String> aMap;

    public HashMap<String, String> getaMap() {
        return aMap;
    }

    
    public FieldCollector(documentType pDoc, String[] pValue) throws Exception {
        
    aMap = new HashMap<>();
        
    if(pValue.length == Config.getField(pDoc).length) {
        for(int i=0; i<Config.getField(pDoc).length; i++) {
            aMap.put(Config.getField(pDoc)[i], pValue[i]);
        }
    } else
        throw new Exception("Impossibile comporre l'HasMap");
        

    }
    
}
