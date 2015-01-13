<%-- 
    Document   : librettodiario
    Created on : 12-gen-2015, 12.14.39
    Author     : ginfl_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libretto Diario</title>
    </head>
    <body>
         &nbsp;
        
           <div class="panel-heading">Libretto Diario</div>
          <table class="table">
          <form method="post" name="modulo">
               <tr><td colspan="30" align="center"><b>Libretto diario  Tutti i campi sono obbligatori</b></td></tr>

             
                   
                        <tr><td><b>Nome</b></td><td><input type="text" name="nome"></td></tr>
                        <tr><td><b>Cognome</b></td><td><input type="text" name="cognome"></td></tr>    
                        <tr><td><b>Dipartimento</b></td><td> <input type="radio" name="dipartimento" value="Bioscienze" checked>Bioscienze</td></tr>
                        <tr><td><b>Corso</b></td><td>
                                    <select name="facoltà">
                                    <option>- Seleziona la tua facoltà -</option>
                                    <option value="Informatica">Informatica</option>
                                    </select>
                                    </td>
                                    </tr>
                       <tr><td><b>Giorno (es: 12/04/2013)</b></td><td><input type="text" name="giorno"></td></tr>
                       <tr><td><b>Ore Svolte(max 8 giornaliere)</b></td><td><input type="text" name="ore"></td></tr> 
                       <tr><td><b>Ora Entrata</b></td><td><input type="text" name="ore"></td></tr> 
                       <tr><td><b>Ora Uscita</b></td><td><input type="text" name="ore"></td></tr> 
                       <tr><td><b>Attività Svolta</b></td><td><input type="text" name="attivitàsvolta"></td></tr> 
                        <tr><td colspan="2"><b>Argomentazione</b></td></tr><tr>
                        <td colspan="2" align="center">
                        <textarea name="argomentazione" rows="5" cols="38">Inserisci qui la tua argomentazione</textarea>
                        </td>
                        </tr>
                        <tr><td colspan="2" align="right"><input type="button" value="Invia" onClick="Modulo()"></td></tr>

                        
                       
          </form>      
          </table>
        <jsp:include page="part/user/navbar/navbar_studente.jsp" />
        <jsp:include page="part/footer.jsp" />
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
