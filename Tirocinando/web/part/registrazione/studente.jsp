<style>
    .row {
        padding-bottom: 25px;
    }
</style>
<form action="Registrazione?selection=studente" method="POST">
     
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
                        <% } } %>
                     ">
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
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Nato/a a
                    </span>
                    <input type="text" name="Comune nascita" class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Prov.
                    </span>
                    <input type="text" name="Provincia nascita" class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        il
                    </span>
                    <input type="text" name="il_anno" placeholder="AAAA" maxlength="4" class="form-control">
                    <span class="input-group-addon">
                        /
                    </span>
                    <input type="text" name="il_mese" placeholder="MM" maxlength="2" class="form-control">
                    <span class="input-group-addon">
                        /
                    </span>
                    <input type="text" name="il_giorno" placeholder="MM" maxlength="2" class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Nazionalita'
                    </span>
                    <input type="text" name="Nazionalita" class="form-control">
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
                        Residente in
                    </span>
                    <input type="text" name="Comune residenza" class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Cap
                    </span>
                    <input type="text" name="C.A.P." class="form-control">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Prov.
                    </span>
                    <input type="text" name="Provincia residenza" class="form-control">
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-9">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Via/C.da
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
                        N.
                    </span>
                    <input type="text" name="N_Civico" class="form-control">
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-12">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Telefono
                    </span>
                    <input type="text" name="Recapito Telefonico" class="form-control">
                </div>
            </div>
        </div>
        <div class='row'>
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
                    <span class="input-group-addon">@studenti.unimol.it</span>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Codice fiscale
                    </span>
                    <input type="text" name="Codice Fiscale" class="form-control">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">Informazini Accademiche</div>
    <div class="panel-body">
        <div class='row'>
            <div class="col-lg-12">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Matricola
                    </span>
                    <input type="text" name="Matricola" class="form-control">
                </div>
            </div>
        </div>
        <!-- Non Esiste ancora un campo nel Database per il Corso di Studi-->
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Dipartimento di
                    </span>
                    <select name="Dipartimento" id="Dipartimento" class="form-control">
                        <option value=""></option>
                        <option value="Agraria">Agricoltura, Ambiente e Alimenti</option>
                        <option value="BioTer">Bioscienze e Territorio</option>
                        <option value="Economia">Economia, Gestione, Societa' e Istituzioni</option>
                        <option value="Giuridico">Giuridico</option>
                        <option value="Medicina">Medicina e Scienze della Salute</option>
                        <option value="Sociale">Scienze Umanistiche Sociali e della Formazione</option>
                        <option value="Placement">Placement</option>
                    </select>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group 
                     <% if(request.getParameter("error")!=null) { 
                        if(request.getParameter("error").equals("true")) { %>
                        has-error
                        <% } } %>">
                    <span class="input-group-addon">
                        Corso di laurea in
                    </span>
                    <input type="text" name="Corso_laurea" class="form-control">
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