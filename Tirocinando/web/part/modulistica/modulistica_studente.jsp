<%-- 
    Document   : modulistica
    Created on : 16-dic-2014, 12.53.40
    Author     : VittorioBarile
--%>

<style>
    .row {
        padding-bottom: 25px;
    }
</style>

<section id="main">
    <div class="container" style="padding-top: 70px;">
        
<div class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">Informazioni Personali</div>
    <div class="panel-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nome
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="Vittorio" disabled>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cognome
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="Barile" disabled>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nato/a a
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="Campobasso" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        il
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="29/07/1991" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nazionalita'
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="Italiana" disabled>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Residente in
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="Sepino" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cap
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="86017" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Prov.
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="CB" disabled>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-9">
                <div class="input-group">
                    <span class="input-group-addon">
                        Via
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="Roma" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        N.
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="6" disabled>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Telefono
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="0874790823" disabled>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cellulare
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="3276897089" disabled>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Email
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="v.barile" disabled>
                    <span class="input-group-addon">@studenti.unimol.it</span>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Codice fiscale
                    </span>
                    <input class="form-control" id="disabledInput" type="text" value="BRLVTR91L29B519C" disabled>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">Informazioni Accademiche</div>
    <div class="panel-body">
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Dipartimento di
                    </span>
                    <select name="Dipartimento" class="form-control" id="disabledSelector" disabled>
                        <option value="Bioscienze e Territorio">Bioscienze e Territorio</option>
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
                <div class="input-group">
                    <span class="input-group-addon">
                        Corso di laurea in
                    </span>
                    <input class="form-control" id="disabledInput" type="text" placeholder="Informatica" disabled>
                </div>
            </div>
        </div>
    </div> 
</div>

<div class="panel panel-default">
    <div class="panel-heading">Informazioni curriculari</div>
        <ul class="nav nav-tabs" id="informazioni_curriculari" role="tablist">
          <li role="presentation" class="active">
              <a href="#Studente_form" role="tab" data-toggle="tab" aria-controls="Studente_form" aria-expanded="true">Se studente</a>
          </li>
          <li role="presentation">
              <a href="#Laureato_form" role="tab" data-toggle="tab" aria-controls="Laureato_form" aria-expanded="true">Se laureato</a>
          </li>
        </ul>
    <div class="panel-body tab-content">
        <div role="tabpanel" class="tab-pane active" id="Studente_form">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Anno di corso
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
               <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            N° totale degli esami del CdL
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div> 
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            N° di esami sostenuti
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Media
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Data prevista di laurea
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Materia della tesi
                        </span>
                        <input type="text" class="form-control" placeholder="Titolo/Argomento della Tesi di Laurea">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Anno di corso
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>
        </div>
        
        <div role="tabpanel" class="tab-pane" id="Laureato_form">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Laureato il
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Voto
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Relatore
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Materia della Tesi
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Titolo/Argomento della Tesi di Laurea</h3>
                        </div>
                        <div class="panel-body">
                          <input type="text" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Eventuali borse di studio/Pubblicazioni/Premi/titoli sportivi certificati</h3>
                        </div>
                        <div class="panel-body">
                          <input type="text" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
           <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Eventuali corsi di perfezionamento o specializzazione (specificare)</h3>
                        </div>
                        <div class="panel-body">
                          <input type="text" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<div class="panel panel-default">
    <div class="panel-heading" id="esperienze_professionali">Esperienze Professionali (Attuali e precedenti)</div>
    <div class="panel-heading" style="background-color: #BDBDBD">Stage</div>
    
    
        <div class="row">
            <div class="col-lg-3">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Dal
                        </span>
                    <input type="text" class="form-control">
                    </div>
            </div>
            <div class="col-lg-3">
                    <div class="input-group">
                        <span class="input-group-addon">
                            al
                        </span>
                    <input type="text" class="form-control">
                    </div>
            </div>
            <div class="col-lg-3">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Dal
                        </span>
                    <input type="text" class="form-control">
                    </div>
            </div>
            <div class="col-lg-3">
                    <div class="input-group">
                        <span class="input-group-addon">
                            al
                        </span>
                    <input type="text" class="form-control">
                    </div>
            </div>
        </div>    
    
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Presso
                    </span>
                <input type="text" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Presso
                    </span>
                <input type="text" class="form-control">
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Attività svolta
                    </span>
                <input type="text" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Attività svolta
                    </span>
                <input type="text" class="form-control">
                </div>
            </div>
        </div>
            
    
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Soggetto promotore
                    </span>
                <input type="text" class="form-control">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Soggetto promotore
                    </span>
                <input type="text" class="form-control">
                </div>
            </div>
        </div>
        
        
        
    
       
</div>
        
    </div>
</section>
