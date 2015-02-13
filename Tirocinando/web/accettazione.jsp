

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="it.unimol.tirocinio.utils.db.Adapter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Accettazione</title>
        <link rel="shortcut icon" href="img/Logo_mini.png">
    </head>
    <body>
        <jsp:include page="part/user/navbar/navbar_tutor.jsp" />

        <section id="main">
            <div class="container" style="padding-top: 70px;">
                <div class="row">
                    <!-- content here -->
                    <table>
                        <tr>
                            <td>Matricola</td>
                            <td>Nome</td>
                            <td>Cognome</td>
                            
                        </tr>
                        <%
                            Adapter ad = new Adapter();
                            ad.select("Studente");
                            ResultSet rS = ad.getResult();
                            while (rS.next()) {
                                String matricola = rS.getString("matricola");
                                String nome = rS.getString("nome");
                                String cognome = rS.getString("cognome");

                        %>
                        <tr>
                            <td><%= matricola%></td>
                            <td><%= nome%></td>
                            <td><%= cognome%></td>
                            <td>
                                <form action="la servlet che approva">
                                    <input type="hidden" name="matricola" value="<%= matricola%>">
                                    <input type="submit" value="APPROVA">
                                </form>
                            </td>
                        </tr>
                        <%
                            }
                        %>

                    </table>
                </div>                

            </div>
        </section>



        <jsp:include page="part/footer.jsp" />


        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
