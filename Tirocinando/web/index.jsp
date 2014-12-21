<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
        <title>Tirocinando</title>
        <link rel="shortcut icon" href="img/Logo_mini.png">
    </head>
    <body>
        <jsp:include page="part/navbar.jsp" />
        
        <jsp:include page="part/guest/home_content.jsp"/>
        
        <jsp:include page="part/footer.jsp" />
        
    </body>
</html>
