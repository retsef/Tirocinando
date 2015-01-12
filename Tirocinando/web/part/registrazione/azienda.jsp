<style>
    .row {
        padding-bottom: 25px;
    }
</style>
<form action="Registrazione?selection=azienda" method="POST">
     
<% if(request.getParameter("error")!=null) { 
   if(request.getParameter("error").equals("true")) { %>
   <div class="alert alert-danger" role="alert">
       <span class="glyphicon glyphicon-warning-sign" />
       Alcuni dei campi inseriti non sono completi o parzialmente errati!
   </div>
   <% } } %>
<div class="panel panel-default">
    <div class="panel-heading">Informazioni Azienda/Ente</div>
    <div class="panel-body">
        <div class="row">
            <div class="col-lg-12">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Denominazione
                    </span>
                    <input type="text" name="Denominazione" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Indirizzo
                    </span>
                    <input type="text" name="Indirizzo" class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Citta'
                    </span>
                    <input type="text" name="Citta" class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        C.A.P.
                    </span>
                    <input type="text" name="C.A.P." class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Numero Tel
                    </span>
                    <input type="text" name="Telefono" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Numero Fax
                    </span>
                    <input type="text" name="Fax" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Email
                    </span>
                    <input type="text" name="Email" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Sito Web
                    </span>
                    <input type="text" name="Sito Web" class="form-control">
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
                        Codice Fiscale o Partita IVA
                    </span>
                    <input type="text" name="C.F/P.IVA" class="form-control">
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
