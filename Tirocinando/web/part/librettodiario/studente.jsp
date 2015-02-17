<%@page import="java.util.HashMap"%>
<div class="container" style="padding-top: 70px">
    <div class="panel panel-default">
        <div class="panel-heading">Compilazione giornaliera del libretto diario</div>
        <div class="panel-body">
            <form action="LibrettoDiario?add=entry" method="POST">
                <div class="btn-group">
                    <button type="submit" class="btn btn-primary" >Compila</button>
                </div>
            </form>
        </div>
    </div>
</div>
    
<% 
    //HashMap<String , String> hashmap = (HashMap) request.getSession().getAttribute("HashMap_Libretto"); 
%>
