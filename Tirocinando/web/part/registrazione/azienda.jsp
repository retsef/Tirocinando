<style>
    .row {
        padding-bottom: 25px;
    }
</style>
<form action="Servlet_registrazione?selection=azienda" method="POST">
     
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
                    <input type="text" id="Denominazione" class="form-control">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Indirizzo
                    </span>
                    <input type="text" id="Indirizzo" class="form-control">
                </div>
            </div>
            <div class="col-lg-4">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Cap/Citta'
                    </span>
                    <input type="text" id="Cap_Citta" class="form-control">
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
                    <input type="text" id="Telefono" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Numero Fax
                    </span>
                    <input type="text" id="Fax" class="form-control">
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
                    <input type="text" id="Email" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        www
                    </span>
                    <input type="text" id="Sito_internet" class="form-control">
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
                    <input type="text" id="CF_PIVA" class="form-control">
                </div>
            </div>
        </div>
    </div>
</div>
</form>
