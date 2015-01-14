<style>
    .row {
        padding-bottom: 25px;
    }
</style>
<form method="post" name="modulo">
<div class="container" style="padding-top: 70px">
    <% if(request.getParameter("error")!=null) { 
   if(request.getParameter("error").equals("true")) { %>
   <div class="alert alert-danger" role="alert">
       <span class="glyphicon glyphicon-warning-sign" />
       Alcuni dei campi inseriti non sono completi o parzialmente errati!
   </div>
   <% } } %>
    <div class="panel panel-default">
        <!--
        <div class="panel-heading">Informazioni Personali</div>
        -->
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
                        <input type="text" name="Nome" value="<%=request.getSession().getAttribute("Nome")%>" class="form-control" readonly>
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
                        <input type="text" name="Cognome" value="<%=request.getSession().getAttribute("Cognome")%>" class="form-control" readonly>
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
                            Dipartimento di
                        </span>
                        <select name="Dipartimento" id="Dipartimento" class="form-control" disabled>
                            <option value=""></option>
                            <option value="Agraria">Agricoltura, Ambiente e Alimenti</option>
                            <option value="BioTer" selected>Bioscienze e Territorio</option>
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
                        <input type="text" name="Corso_laurea" value="Informatica" class="form-control" readonly>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3">
                    <div class="input-group 
                         <% if(request.getParameter("error")!=null) { 
                            if(request.getParameter("error").equals("true")) { %>
                            has-error
                            <% } } %>
                         ">
                        <span class="input-group-addon">
                            Giorno
                        </span>
                        <input type="text" name="Giorno_aa" value="" maxlength="4" class="form-control">
                        <span class="input-group-addon">
                            /
                        </span>
                        <input type="text" name="Giorno_mm" value="" maxlength="2" class="form-control">
                        <span class="input-group-addon">
                            /
                        </span>
                        <input type="text" name="Giorno_gg" value="" maxlength="2" class="form-control">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="input-group 
                         <% if(request.getParameter("error")!=null) { 
                            if(request.getParameter("error").equals("true")) { %>
                            has-error
                            <% } } %>">
                        <span class="input-group-addon">
                            Ore Svolte
                        </span>
                        <select name="Ore">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="input-group 
                         <% if(request.getParameter("error")!=null) { 
                            if(request.getParameter("error").equals("true")) { %>
                            has-error
                            <% } } %>">
                        <span class="input-group-addon">
                            Ore Entrata
                        </span>
                        <select name="Ore_entrata">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="input-group 
                         <% if(request.getParameter("error")!=null) { 
                            if(request.getParameter("error").equals("true")) { %>
                            has-error
                            <% } } %>">
                        <span class="input-group-addon">
                            Ore Uscita
                        </span>
                        <select name="Ore_uscita">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group 
                         <% if(request.getParameter("error")!=null) { 
                            if(request.getParameter("error").equals("true")) { %>
                            has-error
                            <% } } %>
                         ">
                        <span class="input-group-addon">
                            Attività Svolta
                        </span>
                        <input type="text" name="attivita_svolta" value="" class="form-control">
                    </div>
                </div>
            </div>    
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Argomentazione
                        </div>
                        <div class="panel-body
                             <% if(request.getParameter("error")!=null) { 
                                if(request.getParameter("error").equals("true")) { %>
                            has-error
                            <% } } %>">
                            <textarea class="form-control ah" name="Argomentazione" rows="3" style="resize: none"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-11"></div>
        <div class="col-md-1">
            <div class="btn-group right">
                <button type="submit" class="btn btn-primary">Avanti</button>
            </div>
        </div>
    </div>
</div>
</form>
