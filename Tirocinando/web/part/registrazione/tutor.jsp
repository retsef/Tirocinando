<style>
    .row {
        padding-bottom: 25px;
    }
</style>
<form action="Registrazione?selection=tutor" method="POST">
     
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
                    <input type="text" name="Nome" class="form-control">
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
                    <input type="text" name="Cognome" class="form-control">
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
                    <input type="text" name="Email Istituzionale" class="form-control">
                    <span class="input-group-addon">
                        @unimol.it
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Informazini Autenticazione</div>
    <div class="panel-body">
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Username
                    </span>
                    <input type="text" name="Username" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Password
                    </span>
                    <input type="text" name="Password" class="form-control">
                </div>
            </div>        
        </div>
    </div> 
</div>

<div class="row">
    <div class="col-lg-11"></div>
    <div class="col-md-1">
        <div class="btn-group right">
            <button type="submit" class="btn btn-primary" >Avanti</button>
        </div>
    </div>
</div>

</form>
