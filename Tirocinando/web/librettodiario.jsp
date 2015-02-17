<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Libretto Diario</title>
        <link rel="shortcut icon" href="img/Logo_mini.png">
    </head>
    <body>
        <% if(request.getParameter("section")!=null) {
            if(request.getParameter("section").equals("studente")) {
                %>
                <jsp:include page="part/user/navbar/navbar_studente.jsp" />
                <% if(request.getParameter("add")!=null) {
                    if(request.getParameter("add").equals("entry")) { %>
                    <!-- Lo studente vuole registrare la propria giornata -->
                    <jsp:include page="part/librettodiario/compilazione_librettodiario.jsp"/>
                <%  } } else { %>
                    <!-- Lo studente vuole visionare il proprio librettodiario -->
                    <jsp:include page="part/librettodiario/studente.jsp"/>
                <% } %>
        <%  } else if(request.getParameter("section").equals("azienda")) {
                %>
                <!-- L'Azienda vuole visionare il libretto diario dello studente -->
                <jsp:include page="part/user/navbar/navbar_azienda.jsp" />
                <jsp:include page="part/librettodiario/azienda.jsp"/>
        <%  } else if(request.getParameter("section").equals("tutor")) {
                %>
                <!-- Il tutor vuole visionare il libretto diario dello studente -->
                <jsp:include page="part/user/navbar/navbar_tutor.jsp" />
                <jsp:include page="part/librettodiario/tutor.jsp"/>
        <%  }
        }
         %>
           
           <jsp:include page="part/footer.jsp" />
        
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>