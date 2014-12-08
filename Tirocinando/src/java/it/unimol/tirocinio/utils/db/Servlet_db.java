package it.unimol.tirocinio.utils.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Roberto
 */
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet_db extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet at " + request.getContextPath() + "</h1>");
            Adapter adapt = new Adapter();
            out.println("<h1>Adapter istanziato</h1>");
            /*
            String[] array = new String[3];
            array[0] = request.getParameter("uid");
            array[1] = request.getParameter("user_id");
            array[2] = request.getParameter("time");
            out.println("<h1>Valori form ricevuti</h1>");
            try {
                boolean insert = adapt.insert("sessioni", array);
                out.println("<h1>Valori database inseriti</h1>");
            } catch (SQLException ex) {
                out.println("<h1>Errore inserimento database</h1>");
                ex.printStackTrace();
            } catch (Exception_db ex) {
                Logger.getLogger(Servlet_db.class.getName()).log(Level.SEVERE, null, ex);
            }
            */
            try {
                out.println("<h1>Valori database</h1>");
                adapt.select("sessioni");
                ResultSet rs = adapt.getResult();
                while(rs.next()){
                    String uid = rs.getString("uid");
                    out.println("<h1>"+uid+"</h1>");
                }
            } catch (SQLException ex) {
                out.println("<h1>Errore select</h1>");
                Logger.getLogger(Servlet_db.class.getName()).log(Level.SEVERE, null, ex);
            } catch (Exception_db ex) {
                Logger.getLogger(Servlet_db.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            out.println("</body>");
            out.println("</html>");
        }
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
