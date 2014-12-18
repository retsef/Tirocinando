<%-- 
    Document   : azienda_tirocinanti
    Created on : 18-dic-2014, 15.27.56
    Author     : ginfl_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Tirocinanti</title>
    </head>
    <body>
         <jsp:include page="part/navbar_azienda.jsp" />
         
         <div class="panel panel-default">
            <!-- Default panel contents -->
                <div class="panel-heading">Tirocinanti</div>
                
               
        </div>
         
         <!-- Table -->
  
  
  <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Tabella Tirocinanti</div>
        <div class="panel-body">
          
  </div>
    
        
    <table class="table table-bordered" >
        <thead>
            TIROCINANTI
        </thead>
        <tr>
            <td>
                <b>
                    Studente
                </b>
            </td>
            <td>
                 <b>
                     Libretto Diario
                 
                 </b>
            </td>
            
         
        </tr>
        <tr>
            <td>
                Michele Russo
               
            </td>
            <td>
                link al diario studente <img src="img/iconaDiario.png" />
               
            </td>
           
        </tr>
        <tr>
            <td>
                Gianni De Gregorio
               
            </td>
            <td>
                link al diario studente  <img src="img/iconaDiario.png" />
               
            </td>
           
        </tr>
  </table>
        
      
</div>
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <jsp:include page="part/footer.jsp" />
         
         
         
         
         
         
         
         
    </body>
</html>
