package it.unimol.tirocinio.utils.document;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.AcroFields;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.TextField;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

/**
 * @author Roberto
 */
public class CompilazionePDF {
    
    /** The resulting PDF. */
    public static final String FORM = "web/doc/studente/proposta_modulo_di_candidatura.pdf";
    /** The resulting PDFs. */
    public static final String RESULT = "web/doc/studente/proposta_modulo_di_candidatura_modificato.pdf";
    
    public static void manipulatePdf(
            String src, 
            String dest, 
            HashMap<String, TextField> cache,
            HashMap<String, String> pContenuto) 
            throws IOException, DocumentException {
        PdfReader reader = new PdfReader(src);
        PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
        AcroFields form = stamper.getAcroFields();
        form.setFieldCache(cache);
        form.setExtraMargin(2, 0);
        
        
        //form.setField("Corso di laurea in", "Informatica");
        
        
        for (String key : pContenuto.keySet()) {
            //System.out.println(key);
            form.setField(key, pContenuto.get(key));
        }
        
        stamper.close();
        reader.close();
    }
    
    public static void execute() throws IOException, DocumentException, Exception {
        CompilazionePDF subscribe = new CompilazionePDF();
        HashMap<String,TextField> fieldCache = new HashMap<>();
        
        String[] v = {"Informatica","Barile","Vittorio"};
        FieldCollector contenuto = new FieldCollector(Config.documentType.STUDENTE, v);
        
        subscribe.manipulatePdf(FORM, RESULT, fieldCache, contenuto.getMap());
    }
    
}
