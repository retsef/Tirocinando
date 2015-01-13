<%-- 
    Document   : tabella_aziende
    Created on : 9-gen-2015, 12.47.50
    Author     : ginfl_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Aziende Convenzionate</title>
    </head>
         
    <body>
  
      
        <div class="panel-heading">AZIENDE</div>
       
            <table class="table" >
                <thead>
                    <tr>
                        <td>
                            <b>
                                Denominazione Ente Ospitante
                            </b>
                        </td>
                        <td>
                            <b>
                                Indirizzo
                            </b>
                        </td>
                        <td>
                            <b>
                                CAP
                            </b>
                        </td>
                        <td>
                            <b>
                               Città
                            </b>
                        </td>
                        
                        <td>
                            <b>
                               Prov
                            </b>
                        </td>
                        <td>
                             <b>
                               DipartimentoProponente
                            </b>
                        </td>
                        <td>
                             <b>
                               Numero
                            </b>
                        </td>
                    </tr>
                </thead>
                
                    <tr>
                        <td>
                            Prova
                        </td>
                         <td>
                            Via BLABLABLA
                        </td>
                         <td>
                            144523
                        </td>
                         <td>
                            ISERNIA
                        </td>
                         <td>
                            IS
                        </td>
                        <td>
                            BIOSCIENZE
                        </td>
                        <td>
                            14
                        </td>
                       
                        
                    </tr>
                    <tr>
                        <td>
                            Prova2
                        </td>
                         <td>
                            Via cicicici
                        </td>
                         <td>
                            144523
                        </td>
                         <td>
                            FOGGIA
                        </td>
                         <td>
                            fg
                        </td>
                        <td>
                            BIOSCIENZE
                        </td>
                        <td>
                            12
                        </td>
                    </tr>
            </table>
                   
                    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                    <!-- Include all compiled plugins (below), or include individual files as needed -->
                    <script src="js/bootstrap.min.js"></script>
                         
                                <jsp:include page="part/footer.jsp" />
    </body>
</html>
