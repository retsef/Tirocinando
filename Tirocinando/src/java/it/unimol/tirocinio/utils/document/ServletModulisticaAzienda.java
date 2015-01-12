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


public class ServletModulisticaAzienda extends HttpServlet {
    
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
        
        String relativeWebPath_src_1 = "doc/azienda/offerta_stage.pdf";
        String relativeWebPath_dest_1 = "doc/azienda/offerta_stage_mod.pdf";
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
        

        
        request.getSession().setAttribute("Doc_Finale_1", "/Tirocinando/"+relativeWebPath_dest_1);
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