package it.unimol.tirocinio.utils.document;

/**
 *
 * @author VittorioBarile
 */

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.TextField;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VittorioBarile
 */


public class ServletModulisticaStudente extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HashMap<String, String> temp_UserData = new HashMap<>();
        Enumeration<String> enumeration = request.getParameterNames();
        
        while(enumeration.hasMoreElements()){
            String parameterName = (String) enumeration.nextElement();
            temp_UserData.put(
                    parameterName,
                    request.getParameter(parameterName)
            ); 
        }
        
        String relativeWebPath_src_1 = "doc/studente/proposta_modulo_di_candidatura.pdf";
        String relativeWebPath_dest_1 = "doc/studente/proposta_modulo_di_candidatura_mod.pdf";
        String absoluteDiskPath_src_1 = getServletContext().getRealPath(relativeWebPath_src_1);
        String absoluteDiskPath_dest_1 = getServletContext().getRealPath(relativeWebPath_dest_1);
        
        try {
            CompilazionePDF.manipulatePdf( 
                    absoluteDiskPath_src_1,
                    absoluteDiskPath_dest_1,
                    new HashMap<String,TextField>(), temp_UserData);
        } catch (DocumentException ex) {
            Logger.getLogger(ServletModulisticaStudente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        String relativeWebPath_src_2 = "doc/studente/modulo_privacy.pdf";
        String relativeWebPath_dest_2 = "doc/studente/modulo_privacy_mod.pdf";
        String absoluteDiskPath_src_2 = getServletContext().getRealPath(relativeWebPath_src_2);
        String absoluteDiskPath_dest_2 = getServletContext().getRealPath(relativeWebPath_dest_2);
        
        try {
            CompilazionePDF.manipulatePdf( 
                    absoluteDiskPath_src_2,
                    absoluteDiskPath_dest_2,
                    new HashMap<String,TextField>(), temp_UserData);
        } catch (DocumentException ex) {
            Logger.getLogger(ServletModulisticaStudente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String relativeWebPath_src_3 = "doc/studente/progetto_formativo.pdf";
        String relativeWebPath_dest_3 = "doc/studente/progetto_formativo_mod.pdf";
        String absoluteDiskPath_src_3 = getServletContext().getRealPath(relativeWebPath_src_3);
        String absoluteDiskPath_dest_3 = getServletContext().getRealPath(relativeWebPath_dest_3);
        
        try {
            CompilazionePDF.manipulatePdf( 
                    absoluteDiskPath_src_3,
                    absoluteDiskPath_dest_3,
                    new HashMap<String,TextField>(), temp_UserData);
        } catch (DocumentException ex) {
            Logger.getLogger(ServletModulisticaStudente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        String relativeWebPath_src_4 = "doc/studente/lettera_trasmissione_documenti.pdf";
        String relativeWebPath_dest_4 = "doc/studente/lettera_trasmissione_documenti_mod.pdf";
        String absoluteDiskPath_src_4 = getServletContext().getRealPath(relativeWebPath_src_4);
        String absoluteDiskPath_dest_4 = getServletContext().getRealPath(relativeWebPath_dest_4);
        
        try {
            CompilazionePDF.manipulatePdf( 
                    absoluteDiskPath_src_4,
                    absoluteDiskPath_dest_4,
                    new HashMap<String,TextField>(), temp_UserData);
        } catch (DocumentException ex) {
            Logger.getLogger(ServletModulisticaStudente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String relativeWebPath_src_5 = "doc/studente/modulo_richiesta_attestato.pdf";
        String relativeWebPath_dest_5 = "doc/studente/modulo_richiesta_attestato_mod.pdf";
        String absoluteDiskPath_src_5 = getServletContext().getRealPath(relativeWebPath_src_5);
        String absoluteDiskPath_dest_5 = getServletContext().getRealPath(relativeWebPath_dest_5);
        
        try {
            CompilazionePDF.manipulatePdf( 
                    absoluteDiskPath_src_5,
                    absoluteDiskPath_dest_5,
                    new HashMap<String,TextField>(), temp_UserData);
        } catch (DocumentException ex) {
            Logger.getLogger(ServletModulisticaStudente.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        request.getSession().setAttribute("Doc_Finale_1", "/Tirocinando/"+relativeWebPath_dest_1);
        request.getSession().setAttribute("Doc_Finale_2", "/Tirocinando/"+relativeWebPath_dest_2);
        request.getSession().setAttribute("Doc_Finale_3", "/Tirocinando/"+relativeWebPath_dest_3);
        request.getSession().setAttribute("Doc_Finale_4", "/Tirocinando/"+relativeWebPath_dest_4);
        request.getSession().setAttribute("Doc_Finale_5", "/Tirocinando/"+relativeWebPath_dest_5);
        response.sendRedirect("/Tirocinando/Download_Modulo_Compilato.jsp");
        
    }
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}