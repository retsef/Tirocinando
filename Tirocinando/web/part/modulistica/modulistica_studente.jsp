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
                          <textarea class="form-control" name="laureato_tesi" rows="3" style="resize: none"></textarea>
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
                          <textarea class="form-control" name="laureato_borse" rows="3" style="resize: none"></textarea>
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
                          <textarea class="form-control" name="laureato_corsi" rows="3" style="resize: none"></textarea>
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
        <div class="panel-heading" id="stage_1">Stage 1</div>
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
            <div class="panel-heading" id="stage_2">Stage 2</div>
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
        <div class="panel-heading" id="attivita_1">Attività Lavorativa 1</div>
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
            <div class="panel-heading" id="attivita_2">Attività Lavorativa 2</div>
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
            <div class="panel-heading" id="esperienza_estero">Esperienze all'estero</div>
            <div class="panel-body">
                <textarea class="form-control" name="esperienza_estero" rows="3" style="resize: none" placeholder="Indicare il periodo e specificare se per studio o per lavoro"></textarea>
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
              <td><input type="radio" name="Inglese" value="Ottimo_1"/></td>
              <td><input type="radio" name="Inglese" value="Buono_1"/></td>
              <td><input type="radio" name="Inglese" value="Sufficiente_1"/></td>
              <td><input type="radio" name="Inglese" value="Scarso_1"/></td>
          </tr>
          <tr>
              <td>Francese</td>
              <td><input type="radio" name="Francese" value="Ottimo_2"/></td>
              <td><input type="radio" name="Francese" value="Buono_2"/></td>
              <td><input type="radio" name="Francese" value="Sufficiente_2"/></td>
              <td><input type="radio" name="Francese" value="Scarso_2"/></td>
          </tr>
          <tr>
              <td>Spagnolo</td>
              <td><input type="radio" name="Spagnolo" value="Ottimo_3"/></td>
              <td><input type="radio" name="Spagnolo" value="Buono_3"/></td>
              <td><input type="radio" name="Spagnolo" value="Sufficiente_3"/></td>
              <td><input type="radio" name="Spagnolo" value="Scarso_3"/></td>
          </tr>
          <tr>
              <td>Tedesco</td>
              <td><input type="radio" name="Tedesco" value="Ottimo_4"/></td>
              <td><input type="radio" name="Tedesco" value="Buono_4"/></td>
              <td><input type="radio" name="Tedesco" value="Sufficiente_4"/></td>
              <td><input type="radio" name="Tedesco" value="Scarso_4"/></td>
          </tr>
          <tr>
              <td><input type="text" class="form-control" placeholder="Altre lingue"></td>
              <td><input type="radio" name="Altre_lingue" value="Ottimo_5"/></td>
              <td><input type="radio" name="Altre_lingue" value="Buono_5"/></td>
              <td><input type="radio" name="Altre_lingue" value="Sufficiente_5"/></td>
              <td><input type="radio" name="Altre_lingue" value="Scarso_5"/></td>
          </tr>
          
          
      </tbody>
      
  </table>
  
    </div>
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
                                <td><input type="radio" name="s_impresa" value="s_1_1"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_2"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_3"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_4"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_5"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_6"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_7"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_8"/></td>
                            </tr>
                            <tr>
                                <td>Servizi alle persone</td>
                                <td><input type="radio" name="s_persone" value="s_2_1"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_2"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_3"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_4"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_5"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_6"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_7"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore industriale</td>
                                <td><input type="radio" name="s_industriale" value="s_3_1"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_2"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_3"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_4"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_5"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_6"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_7"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore Agro - alimentare</td>
                                <td><input type="radio" name="s_alimentare" value="s_4_1"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_2"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_3"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_4"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_5"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_6"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_7"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore pubblico</td>
                                <td><input type="radio" name="s_pubblico" value="s_5_1"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_2"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_3"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_4"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_5"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_6"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_7"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_8"/></td>
                            </tr>
                            <tr>
                                <td>Mercati finanziari</td>
                                <td><input type="radio" name="s_finanziari" value="s_6_1"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_2"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_3"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_4"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_5"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_6"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_7"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore educativo</td>
                                <td><input type="radio" name="s_educativo" value="s_7_1"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_2"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_3"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_4"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_5"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_6"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_7"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore riabilitativo</td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_1"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_2"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_3"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_4"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_5"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_6"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_7"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore ludico</td>
                                <td><input type="radio" name="s_ludico" value="s_9_1"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_2"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_3"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_4"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_5"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_6"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_7"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore sportivo</td>
                                <td><input type="radio" name="s_sportivo" value="s_10_1"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_2"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_3"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_4"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_5"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_6"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_7"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_8"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="Altro (da specificare)"></td>
                                <td><input type="radio" name="s_altro" value="s_11_1"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_2"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_3"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_4"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_5"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_6"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_7"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_8"/></td>
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
                                <td><input type="radio" name="f_finanza" value="f_1_1"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_2"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_3"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_4"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_5"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_6"/></td>
                            </tr>
                            <tr>
                                <td>Marketing</td>
                                <td><input type="radio" name="f_marketing" value="f_2_1"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_2"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_3"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_4"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_5"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_6"/></td>
                            </tr>
                            <tr>
                                <td>Produzione</td>
                                <td><input type="radio" name="f_produzione" value="f_3_1"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_2"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_3"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_4"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_5"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_6"/></td>
                            </tr>
                            <tr>
                                <td>Amministrazione</td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_1"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_2"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_3"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_4"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_5"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_6"/></td>
                            </tr>
                            <tr>
                                <td>Risorse umane</td>
                                <td><input type="radio" name="f_risorse" value="f_5_1"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_2"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_3"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_4"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_5"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_6"/></td>
                            </tr>
                            <tr>
                                <td>Didattico - educativa</td>
                                <td><input type="radio" name="f_didattico" value="f_6_1"/></td>
                                <td><input type="radio" name="f_didattico" value="f_6_2"/></td>
                                <td><input type="radio" name="f_didattico" value="f_6_3"/></td>
                                <td><input type="radio" name="f_didattico" value="f_6_4"/></td>
                                <td><input type="radio" name="f_didattico" value="f_6_5"/></td>
                                <td><input type="radio" name="f_didattico" value="f_6_6"/></td>
                            </tr>
                            <tr>
                                <td>Prevenzione e educazione motoria per disabili e per soggetti in età diversa</td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_1"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_2"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_3"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_4"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_5"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_6"/></td>
                            </tr>
                            <tr>
                                <td>Tecnico - Sportiva</td>
                                <td><input type="radio" name="f_tecnico" value="f_8_1"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_2"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_3"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_4"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_5"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_6"/></td>
                            </tr>
                            <tr>
                                <td>Manageriale</td>
                                <td><input type="radio" name="f_manageriale" value="f_9_1"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_2"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_3"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_4"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_5"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_6"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="Altro (da specificare)"></td>
                                <td><input type="radio" name="f_altro" value="f_10_1"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_2"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_3"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_4"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_5"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_6"/></td>
                            </tr>
                    </table>
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
                                    <input type="text" class="form-control" placeholder="Nell'ambito Regionale" disabled>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox">
                                    </span>
                                    <input type="text" class="form-control" placeholder="In Italia" disabled>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox">
                                    </span>
                                    <input type="text" class="form-control" placeholder="All'Estero" disabled>
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
                            <textarea class="form-control" name="motivazioni_adesione" rows="5" style="resize: none"></textarea>
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
                                <div class="col-lg-4">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Certificato degli Studi effettuati" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Curriculum Vitae in italiano" disabled>
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Curriculum Vitae in inglese" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Eventuale altra documentazione ritenuta utile per la valutazione della domanda" disabled>
                                    </div>
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
