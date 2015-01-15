<%-- 
    Document   : modulistica
    Created on : 16-dic-2014, 14.20.31
    Author     : Roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Download Modulistica</title>
        <link rel="shortcut icon" href="img/Logo_mini.png">
    </head>
    <body>
        <% if(request.getParameter("section")!=null) {
            if(request.getParameter("section").equals("studente")) {%>
                <jsp:include page="part/user/navbar/navbar_studente.jsp" />
                <jsp:include page="part/modulistica/download/download_modulo_studente.jsp"/>
            <%} else if(request.getParameter("section").equals("azienda")) { %>
                <jsp:include page="part/user/navbar/navbar_azienda.jsp" />
                <jsp:include page="part/modulistica/download/download_modulo_azienda.jsp"/>
            <%}
        }%>
        
        <jsp:include page="part/footer.jsp" />
        
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
