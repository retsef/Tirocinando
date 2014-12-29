<style>
    .row {
        padding-bottom: 25px;
    }
</style>
<form action="Servlet_registrazione?selection=tutor" method="POST">
     
<% if(request.getParameter("error")!=null) { 
   if(request.getParameter("error").equals("true")) { %>
   <div class="alert alert-danger" role="alert">
       <span class="glyphicon glyphicon-warning-sign" />
       Alcuni dei campi inseriti non sono completi o parzialmente errati!
   </div>
   <% } } %>
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">Informazioni Personali</div>
    <div class="panel-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Nome
                    </span>
                    <input type="text" id="Nome" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Cognome
                    </span>
                    <input type="text" id="Cognome" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Email
                    </span>
                    <input type="text" id="Email" class="form-control">
                    <span class="input-group-addon">
                        @unimol.it
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Informazini Accademiche</div>
    <div class="panel-body">
        <div class='row'>
            
        </div>
    </div> 
</div>

</form>
