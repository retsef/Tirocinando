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
                            Titolo/Argomento della Tesi di Laurea
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
                            Eventuali borse di studio/Pubblicazioni/Premi/titoli sportivi certificati
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
                            Eventuali corsi di perfezionamento o specializzazione (specificare)
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
    <div class="panel-body">
        <div class="panel panel-default">
        <div class="panel-heading" id="stage">Stage 1</div>
            <div class="panel-body">
                
            <div class="row">
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                        <input type="text" class="form-control">
                        </div>
                </div>
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                        <input type="text" class="form-control">
                        </div>
                </div>
            </div>    

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Presso
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Attività svolta
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
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

        <div class="panel panel-default">
            <div class="panel-heading" id="stage">Stage 2</div>
            <div class="panel-body">
        
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                        <input type="text" class="form-control">
                        </div>
                    </div>
                
                
                 
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                        <input type="text" class="form-control">
                        </div>
                </div>
                 </div>
                
                 <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Presso
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                 </div>
                
                 <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Attività svolta
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                 </div>
                
                 <div class="row">
                <div class="col-lg-12">
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
    </div>
    
    <div class="panel-body">
        <div class="panel panel-default">
        <div class="panel-heading" id="stage">Attività Lavorativa 1</div>
            <div class="panel-body">
                
            <div class="row">
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                        <input type="text" class="form-control">
                        </div>
                </div>
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                        <input type="text" class="form-control">
                        </div>
                </div>
            </div>    

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Presso
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Attività svolta
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
            </div>

            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading" id="stage">Attività Lavorativa 2</div>
            <div class="panel-body">
        
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                        <input type="text" class="form-control">
                        </div>
                    </div>
                
                
                 
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                        <input type="text" class="form-control">
                        </div>
                </div>
                 </div>
                
                 <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Presso
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                 </div>
                
                 <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Attività svolta
                        </span>
                    <input type="text" class="form-control">
                    </div>
                </div>
                 </div>
                
            </div>
        </div>
    </div>
    
    <div class="panel panel-default">
        <div class="panel-heading" id="esperienza_estero">Esperienze all'estero</div>
        <div class="panel-body">
            <input type="text" class="form-control" placeholder="Indicare il periodo e specificare se per studio o per lavoro">
        </div>
    </div>
    
    
    <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">Lingue conosciute</div>

  <!-- Table -->
  <table class="table">
      <thead>
      <tr>
          <th>Lingua</th>
          <th>Ottimo</th>
          <th>Buono</th>
          <th>Sufficiente</th>
          <th>Scarso</th>
      </tr>
      </thead>
      
      <tbody>
          <tr>
              <td>Inglese</td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
          </tr>
          <tr>
              <td>Francese</td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
          </tr>
          <tr>
              <td>Spagnolo</td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
          </tr>
          <tr>
              <td>Tedesco</td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
          </tr>
          <tr>
              <td><input type="text" class="form-control" placeholder="Altre lingue"></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
              <td><input type="radio" name="lingua" value="html"/></td>
          </tr>
          
          
      </tbody>
      
  </table>
  
</div>
    </div>
    
    <div class="panel panel-default">
        <div class="panel-heading" id="info_stage">Informazioni relative allo Stage</div>
        <div class="panel-body">
            <div class="panel panel-default">
                <div class="panel-heading">Settore</div>
                <div class="panel-body">
                    <p>Indicare il livello di interesse per il settore: attribuire un punteggio da 1 a 8 (1 = max)</p>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Settore</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Servizi alle imprese</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Servizi alle persone</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore industriale</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore Agro - alimentare</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore pubblico</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Mercati finanziari</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore educativo</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore riabilitativo</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore ludico</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Settore sportivo</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="Altro (da specificare)"></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            
                        </tbody>
                        
                    </table>
                </div>
                
            </div>
                    
        <div class="panel panel-default">
                <div class="panel-heading">Funzione</div>
                <div class="panel-body">
                    <p>Indicare il livello di interesse per la funzione da svolgere: attribuire un punteggio da 1 a 6 (1 = max)</p>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Funzione</th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Finanza</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Marketing</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Produzione</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Amministrazione</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Risorse umane</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Didattico - educativa</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Prevenzione e educazione motoria per disabili e per soggetti in età diversa</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Tecnico - Sportiva</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td>Manageriale</td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="Altro (da specificare)"></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                                <td><input type="radio" name="lingua" value="html"/></td>
                            </tr>
                    </table
                </div>
            
            </div>
        </div>
        
        <!-- non mi piace, da vedere -->
        <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Preferenza relativa al periodo dello Stage dal
                            </span>
                        <input type="date" class="form-control">
                        </div>
                    </div>
                
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            al
                        </span>
                        <input type="date" class="form-control">
                    </div>
                </div>
        </div>
        
        <div class="row">
            <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Disponibilità al Trasferimento (anche più di una risposta)
                        </div>
                        
                        <div class="panel-body">
            
                        <div class="row">
                            <div class="col-lg-3">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="Nell'ambito Regionale">
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="In Italia">
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="All'Estero">
                              </div>
                            </div>
                    </div>
                        </div>
                    </div>
            </div>
        </div>
        
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Motivazioni dell'adesione al programma stages universitario
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
                            Allegati
                        </div>
                        
                        <div class="panel-body">
            
                        <div class="row">
                            <div class="col-lg-3">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="Certificato degli Studi effettuati">
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="Curriculum Vitae in italiano">
                              </div>
                            </div>
                            <div class="col-lg-3">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="Curriculum Vitae in inglese">
                              </div>
                            </div>
                        </div>
                            <div class="row">
                            <div class="col-lg-7">
                              <div class="input-group">
                                <span class="input-group-addon">
                                  <input type="checkbox">
                                </span>
                                  <input type="text" class="form-control" placeholder="Eventuale altra documentazione ritenuta utile per la valutazione della domanda">
                              </div>
                            </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        
        
    </div>
        
        
    </div>
</section>
