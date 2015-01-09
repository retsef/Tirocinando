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

<section name="main">
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
                    <input class="form-control" name="disabledInput" type="text" value="Vittorio" disabled>
                </div>
     </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cognome
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="Barile" disabled>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nato/a a
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="Campobasso" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        il
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="29/07/1991" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nazionalita'
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="Italiana" disabled>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Residente in
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="Sepino" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cap
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="86017" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Prov.
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="CB" disabled>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-9">
                <div class="input-group">
                    <span class="input-group-addon">
                        Via
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="Roma" disabled>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        N.
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="6" disabled>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Telefono
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="0874790823" disabled>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cellulare
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="3276897089" disabled>
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Email
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="v.barile" disabled>
                    <span class="input-group-addon">@studenti.unimol.it</span>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Codice fiscale
                    </span>
                    <input class="form-control" name="disabledInput" type="text" value="BRLVTR91L29B519C" disabled>
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
                    <select name="Dipartimento" class="form-control" name="disabledSelector" disabled>
                        <option value="Bioscienze e Territorio">Bioscienze e Territorio</option>
                        <option value="Agraria">Agricoltura, Ambiente e Alimenti</option>
                        <option value="BioTer">Bioscienze e Territorio</option>
                        <option value="Economia">Economia, Gestione, Societa' e Istituzioni</option>
                        <option value="Giurnameico">Giurnameico</option>
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
                    <input class="form-control" name="disabledInput" type="text" placeholder="Informatica" disabled>
                </div>
            </div>
        </div>
    </div> 
</div>

<div class="panel panel-default">
    <div class="panel-heading">Informazioni curriculari</div>
        <ul class="nav nav-tabs" name="informazioni_curriculari" role="tablist">
          <li role="presentation" class="active">
              <a href="#Studente_form" role="tab" data-toggle="tab" aria-controls="Studente_form" aria-expanded="true">Se studente</a>
          </li>
          <li role="presentation">
              <a href="#Laureato_form" role="tab" data-toggle="tab" aria-controls="Laureato_form" aria-expanded="true">Se laureato</a>
          </li>
        </ul>
    <div class="panel-body tab-content">
        <div role="tabpanel" class="tab-pane active" name="Studente_form">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Anno di corso
                        </span>
                    <input type="text" class="form-control" name="Anno di Corso">
                    </div>
                </div>
               <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            N° totale degli esami del CdL
                        </span>
                        <input type="text" class="form-control" name="N totale degli esami del corso di laurea">
                    </div>
                </div> 
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            N° di esami sostenuti
                        </span>
                        <input type="text" class="form-control" name="N esami sostenuti">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Media
                        </span>
                        <input type="text" class="form-control" name="media">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Data prevista di laurea
                        </span>
                        <input type="text" class="form-control" name="Data prevista di laurea">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Materia della tesi
                        </span>
                        <input type="text" class="form-control" placeholder="Titolo/Argomento della Tesi di Laurea" name="Materia della tesi">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Anno di corso
                        </span>
                        <input type="text" class="form-control" name="Anno di corso">
                    </div>
                </div>
            </div>
        </div>
        
        <div role="tabpanel" class="tab-pane" name="Laureato_form">
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Laureato il
                        </span>
                        <input type="text" class="form-control" name="Laureato il">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Voto
                        </span>
                        <input type="text" class="form-control" name="Voto">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Relatore
                        </span>
                        <input type="text" class="form-control" name="Relatore">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Materia della Tesi
                        </span>
                        <input type="text" class="form-control" name="Materia della tesi_2">
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
                            <textarea class="form-control" name="laureato_tesi" rows="3" style="resize: none" name="Testo1.0"></textarea>
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
                            <textarea class="form-control" name="laureato_borse" rows="3" style="resize: none" name="Testo1.1"></textarea>
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
                            <textarea class="form-control" name="laureato_corsi" rows="3" style="resize: none" name="Testo1.2"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
        
        
<div class="panel panel-default">
    <div class="panel-heading" name="esperienze_professionali">Esperienze Professionali (Attuali e precedenti)</div>
    <div class="panel-body">
        <div class="panel panel-default">
        <div class="panel-heading" name="stage_1">Stage 1</div>
            <div class="panel-body">
                
            <div class="row">
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                            <input type="text" class="form-control" name="1 Dal">
                        </div>
                </div>
                <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                            <input type="text" class="form-control" name="al">
                        </div>
                </div>
            </div>    

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Presso
                        </span>
                        <input type="text" class="form-control" name="presso_1">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Attività svolta
                        </span>
                        <input type="text" class="form-control" name="Attivita svolta">
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Soggetto promotore
                        </span>
                        <input type="text" class="form-control" name="Soggetto promotore">
                    </div>
                </div>
                
            </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading" name="stage_2">Stage 2</div>
            <div class="panel-body">
        
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                            <input type="text" class="form-control" name="2 Dal">
                        </div>
                    </div>
                
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                            <input type="text" class="form-control" name="al_2">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Presso
                            </span>
                            <input type="text" class="form-control" name="presso_2">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Attività svolta
                            </span>
                            <input type="text" class="form-control" name="Attivita svolta_2">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Soggetto promotore
                            </span>
                            <input type="text" class="form-control" name="Soggetto promotore_2">
                        </div>
                    </div>
                </div>
        
            </div>
        </div>
    
        <div class="panel panel-default">
        <div class="panel-heading" name="attivita_1">Attività Lavorativa 1</div>
            <div class="panel-body">
                
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                            <input type="text" class="form-control" name="1 Dal_2">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                            <input type="text" class="form-control" name="al_3">
                        </div>
                    </div>
                </div>    

                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Presso
                            </span>
                            <input type="text" class="form-control" name="Presso_3">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Attività svolta
                            </span>
                            <input type="text" class="form-control" name="Attivita svolta_3">
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-heading" name="attivita_2">Attività Lavorativa 2</div>
            <div class="panel-body">
        
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Dal
                            </span>
                            <input type="text" class="form-control" name="2 Dal_2">
                        </div>
                    </div>
                
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                al
                            </span>
                            <input type="text" class="form-control" name="al_4">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Presso
                            </span>
                            <input type="text" class="form-control" name="Presso_4">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Attività svolta
                            </span>
                            <input type="text" class="form-control" name="Attivita svolta_4">
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    
        <div class="panel panel-default">
            <div class="panel-heading" name="Testo2">Esperienze all'estero</div>
            <div class="panel-body">
                <textarea name="esperienze_estero" class="form-control" name="esperienza_estero" rows="3" style="resize: none" placeholder="Indicare il periodo e specificare se per studio o per lavoro"></textarea>
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
              <td><input name="ing_Ottimo_1" type="radio" name="Inglese" value="Ottimo_1"/></td>
              <td><input name="ing_Buono_1" type="radio" name="Inglese" value="Buono_1"/></td>
              <td><input name="ing_Sufficiente_1" type="radio" name="Inglese" value="Sufficiente_1"/></td>
              <td><input name="ing_Scarso_1" type="radio" name="Inglese" value="Scarso_1"/></td>
          </tr>
          <tr>
              <td>Francese</td>
              <td><input name="fra_Ottimo_2" type="radio" name="Francese" value="Ottimo_2"/></td>
              <td><input name="fra_Buono_2" type="radio" name="Francese" value="Buono_2"/></td>
              <td><input name="fra_Sufficiente_2" type="radio" name="Francese" value="Sufficiente_2"/></td>
              <td><input name="fra_Scarso_2" type="radio" name="Francese" value="Scarso_2"/></td>
          </tr>
          <tr>
              <td>Spagnolo</td>
              <td><input name="spa_Ottimo_3" type="radio" name="Spagnolo" value="Ottimo_3"/></td>
              <td><input name="spa_Buono_3" type="radio" name="Spagnolo" value="Buono_3"/></td>
              <td><input name="spa_Sufficiente_3" type="radio" name="Spagnolo" value="Sufficiente_3"/></td>
              <td><input name="spa_Scarso_3" type="radio" name="Spagnolo" value="Scarso_3"/></td>
          </tr>
          <tr>
              <td>Tedesco</td>
              <td><input name="ted_Ottimo_4" type="radio" name="Tedesco" value="Ottimo_4"/></td>
              <td><input name="ted_Buono_4" type="radio" name="Tedesco" value="Buono_4"/></td>
              <td><input name="ted_Sufficiente_4" type="radio" name="Tedesco" value="Sufficiente_4"/></td>
              <td><input name="ted_Scarso_4" type="radio" name="Tedesco" value="Scarso_4"/></td>
          </tr>
          <tr>
              <td><input name="altre_lingue" type="text" class="form-control" placeholder="Altre lingue"></td>
              <td><input name="altre_lingue_Ottimo_5" type="radio" name="Altre_lingue" value="Ottimo_5"/></td>
              <td><input name="altre_lingue_Buono_5" type="radio" name="Altre_lingue" value="Buono_5"/></td>
              <td><input name="altre_lingue_Sufficiente_5" type="radio" name="Altre_lingue" value="Sufficiente_5"/></td>
              <td><input name="altre_lingue_Scarso_5" type="radio" name="Altre_lingue" value="Scarso_5"/></td>
          </tr>
          
          
      </tbody>
      
  </table>
  
    </div>
    </div>
    </div>
    
    <div class="panel panel-default">
        <div class="panel-heading" name="info_stage">Informazioni relative allo Stage</div>
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
                                <td><input type="radio" name="s_impresa" value="s_1_1" name="imprese_s_1_1"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_2" name="imprese_s_1_2"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_3" name="imprese_s_1_3"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_4" name="imprese_s_1_4"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_5" name="imprese_s_1_5"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_6" name="imprese_s_1_6"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_7" name="imprese_s_1_7"/></td>
                                <td><input type="radio" name="s_impresa" value="s_1_8" name="imprese_s_1_8"/></td>
                            </tr>
                            <tr>
                                <td>Servizi alle persone</td>
                                <td><input type="radio" name="s_persone" value="s_2_1" name="persone_s_2_1"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_2" name="persone_s_2_2"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_3" name="persone_s_2_3"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_4" name="persone_s_2_4"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_5" name="persone_s_2_5"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_6" name="persone_s_2_6"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_7" name="persone_s_2_7"/></td>
                                <td><input type="radio" name="s_persone" value="s_2_8" name="persone_s_2_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore industriale</td>
                                <td><input type="radio" name="s_industriale" value="s_3_1" name="industriale_s_3_1"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_2" name="industriale_s_3_2"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_3" name="industriale_s_3_3"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_4" name="industriale_s_3_4"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_5" name="industriale_s_3_5"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_6" name="industriale_s_3_6"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_7" name="industriale_s_3_7"/></td>
                                <td><input type="radio" name="s_industriale" value="s_3_8" name="industriale_s_3_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore Agro - alimentare</td>
                                <td><input type="radio" name="s_alimentare" value="s_4_1" name="agro_s_4_1"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_2" name="agro_s_4_2"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_3" name="agro_s_4_3"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_4" name="agro_s_4_4"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_5" name="agro_s_4_5"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_6" name="agro_s_4_6"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_7" name="agro_s_4_7"/></td>
                                <td><input type="radio" name="s_alimentare" value="s_4_8" name="agro_s_4_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore pubblico</td>
                                <td><input type="radio" name="s_pubblico" value="s_5_1" name="pubblico_s_5_1"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_2" name="pubblico_s_5_2"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_3" name="pubblico_s_5_3"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_4" name="pubblico_s_5_4"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_5" name="pubblico_s_5_5"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_6" name="pubblico_s_5_6"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_7" name="pubblico_s_5_7"/></td>
                                <td><input type="radio" name="s_pubblico" value="s_5_8" name="pubblico_s_5_8"/></td>
                            </tr>
                            <tr>
                                <td>Mercati finanziari</td>
                                <td><input type="radio" name="s_finanziari" value="s_6_1" name="finanza_s_6_1"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_2" name="finanza_s_6_2"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_3" name="finanza_s_6_3"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_4" name="finanza_s_6_4"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_5" name="finanza_s_6_5"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_6" name="finanza_s_6_6"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_7" name="finanza_s_6_7"/></td>
                                <td><input type="radio" name="s_finanziari" value="s_6_8" name="finanza_s_6_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore educativo</td>
                                <td><input type="radio" name="s_educativo" value="s_7_1" name="edu_s_7_1"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_2" name="edu_s_7_2"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_3" name="edu_s_7_3"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_4" name="edu_s_7_4"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_5" name="edu_s_7_5"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_6" name="edu_s_7_6"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_7" name="edu_s_7_7"/></td>
                                <td><input type="radio" name="s_educativo" value="s_7_8" name="edu_s_7_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore riabilitativo</td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_1" name="riabilitativo_s_8_1"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_2" name="riabilitativo_s_8_2"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_3" name="riabilitativo_s_8_3"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_4" name="riabilitativo_s_8_4"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_5" name="riabilitativo_s_8_5"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_6" name="riabilitativo_s_8_6"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_7" name="riabilitativo_s_8_7"/></td>
                                <td><input type="radio" name="s_riabilitativo" value="s_8_8" name="riabilitativo_s_8_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore ludico</td>
                                <td><input type="radio" name="s_ludico" value="s_9_1" name="ludico_s_9_1"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_2" name="ludico_s_9_2"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_3" name="ludico_s_9_3"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_4" name="ludico_s_9_4"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_5" name="ludico_s_9_5"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_6" name="ludico_s_9_6"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_7" name="ludico_s_9_7"/></td>
                                <td><input type="radio" name="s_ludico" value="s_9_8" name="ludico_s_9_8"/></td>
                            </tr>
                            <tr>
                                <td>Settore sportivo</td>
                                <td><input type="radio" name="s_sportivo" value="s_10_1" name="sportivo_s_10_1"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_2" name="sportivo_s_10_2"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_3" name="sportivo_s_10_3"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_4" name="sportivo_s_10_4"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_5" name="sportivo_s_10_5"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_6" name="sportivo_s_10_6"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_7" name="sportivo_s_10_7"/></td>
                                <td><input type="radio" name="s_sportivo" value="s_10_8" name="sportivo_s_10_8"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="Altro (da specificare)" name="altro_s_11_0"></td>
                                <td><input type="radio" name="s_altro" value="s_11_1" name="altro_s_11_1"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_2" name="altro_s_11_2"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_3" name="altro_s_11_3"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_4" name="altro_s_11_4"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_5" name="altro_s_11_5"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_6" name="altro_s_11_6"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_7" name="altro_s_11_7"/></td>
                                <td><input type="radio" name="s_altro" value="s_11_8" name="altro_s_11_8"/></td>
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
                                <td><input type="radio" name="f_finanza" value="f_1_1" name="finanza_f_1_1"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_2" name="finanza_f_1_2"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_3" name="finanza_f_1_3"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_4" name="finanza_f_1_4"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_5" name="finanza_f_1_5"/></td>
                                <td><input type="radio" name="f_finanza" value="f_1_6" name="finanza_f_1_6"/></td>
                            </tr>
                            <tr>
                                <td>Marketing</td>
                                <td><input type="radio" name="f_marketing" value="f_2_1" name="marketing_f_2_1"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_2" name="marketing_f_2_2"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_3" name="marketing_f_2_3"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_4" name="marketing_f_2_4"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_5" name="marketing_f_2_5"/></td>
                                <td><input type="radio" name="f_marketing" value="f_2_6" name="marketing_f_2_6"/></td>
                            </tr>
                            <tr>
                                <td>Produzione</td>
                                <td><input type="radio" name="f_produzione" value="f_3_1" name="produzione_f_3_1"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_2" name="produzione_f_3_2"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_3" name="produzione_f_3_3"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_4" name="produzione_f_3_4"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_5" name="produzione_f_3_5"/></td>
                                <td><input type="radio" name="f_produzione" value="f_3_6" name="produzione_f_3_6"/></td>
                            </tr>
                            <tr>
                                <td>Amministrazione</td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_1" name="amministrazione_f_4_1"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_2" name="amministrazione_f_4_2"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_3" name="amministrazione_f_4_3"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_4" name="amministrazione_f_4_4"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_5" name="amministrazione_f_4_5"/></td>
                                <td><input type="radio" name="f_amministrazione" value="f_4_6" name="amministrazione_f_4_6"/></td>
                            </tr>
                            <tr>
                                <td>Risorse umane</td>
                                <td><input type="radio" name="f_risorse" value="f_5_1" name="umane_f_5_1"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_2" name="umane_f_5_2"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_3" name="umane_f_5_3"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_4" name="umane_f_5_4"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_5" name="umane_f_5_5"/></td>
                                <td><input type="radio" name="f_risorse" value="f_5_6" name="umane_f_5_6"/></td>
                            </tr>
                            <tr>
                                <td>Dnameattico - educativa</td>
                                <td><input type="radio" name="f_dnameattico" value="f_6_1" name="dnameattico_f_6_1"/></td>
                                <td><input type="radio" name="f_dnameattico" value="f_6_2" name="dnameattico_f_6_2"/></td>
                                <td><input type="radio" name="f_dnameattico" value="f_6_3" name="dnameattico_f_6_3"/></td>
                                <td><input type="radio" name="f_dnameattico" value="f_6_4" name="dnameattico_f_6_4"/></td>
                                <td><input type="radio" name="f_dnameattico" value="f_6_5" name="dnameattico_f_6_5"/></td>
                                <td><input type="radio" name="f_dnameattico" value="f_6_6" name="dnameattico_f_6_6"/></td>
                            </tr>
                            <tr>
                                <td>Prevenzione e educazione motoria per disabili e per soggetti in età diversa</td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_1" name="motoria_f_7_1"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_2" name="motoria_f_7_2"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_3" name="motoria_f_7_3"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_4" name="motoria_f_7_4"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_5" name="motoria_f_7_5"/></td>
                                <td><input type="radio" name="f_prevenzione" value="f_7_6" name="motoria_f_7_6"/></td>
                            </tr>
                            <tr>
                                <td>Tecnico - Sportiva</td>
                                <td><input type="radio" name="f_tecnico" value="f_8_1" name="sport_f_8_1"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_2" name="sport_f_8_2"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_3" name="sport_f_8_3"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_4" name="sport_f_8_4"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_5" name="sport_f_8_5"/></td>
                                <td><input type="radio" name="f_tecnico" value="f_8_6" name="sport_f_8_6"/></td>
                            </tr>
                            <tr>
                                <td>Manageriale</td>
                                <td><input type="radio" name="f_manageriale" value="f_9_1" name="manager_f_9_1"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_2" name="manager_f_9_2"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_3" name="manager_f_9_3"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_4" name="manager_f_9_4"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_5" name="manager_f_9_5"/></td>
                                <td><input type="radio" name="f_manageriale" value="f_9_6" name="manager_f_9_6"/></td>
                            </tr>
                            <tr>
                                <td><input name="altro" type="text" class="form-control" placeholder="Altro (da specificare)" name="altro_f_10_0"></td>
                                <td><input type="radio" name="f_altro" value="f_10_1" name="altro_f_10_1"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_2" name="altro_f_10_2"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_3" name="altro_f_10_3"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_4" name="altro_f_10_4"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_5" name="altro_f_10_5"/></td>
                                <td><input type="radio" name="f_altro" value="f_10_6" name="altro_f_10_6"/></td>
                            </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Preferenza relativa al periodo dello Stage dal
                        </span>
                        <input type="date" class="form-control" name="Presferenza relativa al periodo dello Stage">
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            al
                        </span>
                        <input type="date" class="form-control" name="Al_2">
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
                                    <input type="text" class="form-control" placeholder="Nell'ambito Regionale" disabled name="trasf_regione">
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox">
                                    </span>
                                    <input type="text" class="form-control" placeholder="In Italia" disabled name="trasf_italia">
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox">
                                    </span>
                                    <input type="text" class="form-control" placeholder="All'Estero" disabled  name="trasf_estero">
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
                            <textarea class="form-control" name="motivazioni_adesione" rows="5" style="resize: none" name="Testo3"></textarea>
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
                                        <input type="text" class="form-control" placeholder="Certificato degli Studi effettuati" disabled name="certificato_studi">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Curriculum Vitae in italiano" disabled name="cv_ita">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Curriculum Vitae in inglese" disabled name="cv_ing">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Eventuale altra documentazione ritenuta utile per la valutazione della domanda" disabled name="doc_domanda">
                                    </div>
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
        
    </div>
        
        
    </div>
</section>
