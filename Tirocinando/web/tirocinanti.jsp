<%-- 
    Document   : tirocinanti
    Created on : 19-dic-2014, 19.44.44
    Author     : roberto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Tirocinanti</title>
        <link rel="shortcut icon" href="img/Logo_mini.png">
    </head>
    <body>
        <% if(request.getParameter("section")!=null) {
            if(request.getParameter("section").equals("azienda")){%>
                <jsp:include page="part/user/navbar/navbar_azienda.jsp" />
                <jsp:include page="part/tirocinanti/azienda.jsp" />
            <%} else if(request.getParameter("section").equals("tutor")) {%>
                <jsp:include page="part/user/navbar/navbar_tutor.jsp" />
                <jsp:include page="part/tirocinanti/tutor.jsp" />
            <%}
        } %>
        
        <jsp:include page="part/footer.jsp" />
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
