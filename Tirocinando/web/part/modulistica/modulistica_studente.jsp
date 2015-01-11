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
    <input style="visibility: hidden" type="text" value="Informatica" readonly name="Corso di laurea in">
    <div class="panel-body">
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nome
                    </span>
                    <input class="form-control" type="text" value="Vittorio" readonly name="Nome">
                </div>
     </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cognome
                    </span>
                    <input class="form-control" type="text" value="Barile" readonly name="Cognome">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nato/a a
                    </span>
                    <input class="form-control"  type="text" value="Campobasso" readonly name="Natoa a">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        il
                    </span>
                    <input class="form-control"  type="text" value="29/07/1991" readonly name="il">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Nazionalita
                    </span>
                    <input class="form-control"  type="text" value="Italiana" readonly name="Nazionalita">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Residente in
                    </span>
                    <input class="form-control"  type="text" value="Sepino" readonly name="Residente in">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cap
                    </span>
                    <input class="form-control"  type="text" value="86017" readonly name="Cap">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        Prov.
                    </span>
                    <input class="form-control"  type="text" value="CB" readonly name="Prov">
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-9">
                <div class="input-group">
                    <span class="input-group-addon">
                        Via
                    </span>
                    <input class="form-control"  type="text" value="Roma" readonly name="Via">
                </div>
            </div>
            <div class="col-lg-3">
                <div class="input-group">
                    <span class="input-group-addon">
                        N.
                    </span>
                    <input class="form-control"  type="text" value="6" readonly name="N">
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Telefono
                    </span>
                    <input class="form-control"  type="text" value="0874790823" readonly name="Telefono">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Cellulare
                    </span>
                    <input class="form-control"  type="text" value="3276897089" readonly name="Cellulare">
                </div>
            </div>
        </div>
        <div class='row'>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Email
                    </span>
                    <input class="form-control"  type="text" value="v.barile@studenti.unimol.it" readonly name="email">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="input-group">
                    <span class="input-group-addon">
                        Codice fiscale
                    </span>
                    <input class="form-control"  type="text" value="BRLVTR91L29B519C" readonly name="Codice fiscale">
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
                    <select name="Dipartimento" class="form-control" name="readonlySelector" readonly>
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
                    <input class="form-control" type="text" value="Informatica" readonly name="Corso di Laurea in">
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
        <div role="tabpanel" class="tab-pane active" id="Studente_form">
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
                        <input type="text" class="form-control" placeholder="Titolo/Argomento della Tesi di Laurea" name="Materia della Tesi">
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
                        <input type="text" class="form-control" name="Presso">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Attivita svolta
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
                            <input type="text" class="form-control" name="Presso_2">
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Attivita svolta
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
                                Attivita svolta
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
                                Attivita svolta
                            </span>
                            <input type="text" class="form-control" name="Attivita svolta_4">
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    
        <div class="panel panel-default">
            <div class="panel-heading">Esperienze all'estero</div>
            <div class="panel-body">
                <textarea name="Testo2" class="form-control" name="esperienza_estero" rows="3" style="resize: none" placeholder="Indicare il periodo e specificare se per studio o per lavoro"></textarea>
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
              <td><input name="Ottimo" type="radio" name="Inglese" value="Ottimo_1"/></td>
              <td><input name="Buono" type="radio" name="Inglese" value="Buono_1"/></td>
              <td><input name="Sufficiente" type="radio" name="Inglese" value="Sufficiente_1"/></td>
              <td><input name="Scarso" type="radio" name="Inglese" value="Scarso_1"/></td>
          </tr>
          <tr>
              <td>Francese</td>
              <td><input name="Ottimo_2" type="radio" name="Francese" value="Ottimo_2"/></td>
              <td><input name="Buono_2" type="radio" name="Francese" value="Buono_2"/></td>
              <td><input name="Sufficiente_2" type="radio" name="Francese" value="Sufficiente_2"/></td>
              <td><input name="Scarso_2" type="radio" name="Francese" value="Scarso_2"/></td>
          </tr>
          <tr>
              <td>Spagnolo</td>
              <td><input name="Ottimo_3" type="radio" name="Spagnolo" value="Ottimo_3"/></td>
              <td><input name="Buono_3" type="radio" name="Spagnolo" value="Buono_3"/></td>
              <td><input name="Sufficiente_3" type="radio" name="Spagnolo" value="Sufficiente_3"/></td>
              <td><input name="Scarso_3" type="radio" name="Spagnolo" value="Scarso_3"/></td>
          </tr>
          <tr>
              <td>Tedesco</td>
              <td><input name="Ottimo_4" type="radio" name="Tedesco" value="Ottimo_4"/></td>
              <td><input name="Buono_4" type="radio" name="Tedesco" value="Buono_4"/></td>
              <td><input name="Sufficiente_4" type="radio" name="Tedesco" value="Sufficiente_4"/></td>
              <td><input name="Scarso_4" type="radio" name="Tedesco" value="Scarso_4"/></td>
          </tr>
          <tr>
              <td><input name="Altre lingue" type="text" class="form-control" placeholder="Altre lingue"></td>
              <td><input name="Ottimo_5" type="radio" name="Altre_lingue" value="Ottimo_5"/></td>
              <td><input name="Buono_5" type="radio" name="Altre_lingue" value="Buono_5"/></td>
              <td><input name="Sufficiente_5" type="radio" name="Altre_lingue" value="Sufficiente_5"/></td>
              <td><input name="Scarso_5" type="radio" name="Altre_lingue" value="Scarso_5"/></td>
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
                                <td><input type="radio" name="Casella combinata5.0" value="1"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="2"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="3"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="4"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="5"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="6"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="7"/></td>
                                <td><input type="radio" name="Casella combinata5.0" value="8"/></td>
                            </tr>
                            <tr>
                                <td>Servizi alle persone</td>
                                <td><input type="radio" name="Casella combinata5.1" value="1"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="2"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="3"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="4"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="5"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="6"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="7"/></td>
                                <td><input type="radio" name="Casella combinata5.1" value="8"/></td>
                            </tr>
                            <tr>
                                <td>Settore industriale</td>
                                <td><input type="radio" name="Casella combinata5.2" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.2" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Settore Agro - alimentare</td>
                                <td><input type="radio" name="Casella combinata5.3" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.3" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Settore pubblico</td>
                                <td><input type="radio" name="Casella combinata5.4" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.4" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Mercati finanziari</td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.5.0" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Settore educativo</td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.5.1" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Settore riabilitativo</td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.5.3" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Settore ludico</td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.0" value="8" /></td>
                            </tr>
                            <tr>
                                <td>Settore sportivo</td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.1" value="8" /></td>
                            </tr>
                            <tr>
                                <td><input type="text" class="form-control" placeholder="Altro (da specificare)" name="altro_s_11_0"></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="6" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="7" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.0" value="8" s/></td>
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
                                <td><input type="radio" name="Casella combinata5.5.2.2.1" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.1" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.1" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.1" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.1" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.1" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Marketing</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.2" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.2" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.2" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.2" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.2" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.2" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Produzione</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.3" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.3" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.3" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.3" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.3" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.3" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Amministrazione</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.4" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.4" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.4" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.4" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.4" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.4" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Risorse umane</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.5" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.5" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.5" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.5" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.5" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.5" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Dnameattico - educativa</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.6" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.6" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.6" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.6" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.6" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.6" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Prevenzione e educazione motoria per disabili e per soggetti in età diversa</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.7" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.7" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.7" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.7" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.7" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.7" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Tecnico - Sportiva</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.8" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.8" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.8" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.8" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.8" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.8" value="6" /></td>
                            </tr>
                            <tr>
                                <td>Manageriale</td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.9" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.9" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.9" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.9" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.9" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.9" value="6" /></td>
                            </tr>
                            <tr>
                                <td><input name="altro" type="text" class="form-control" placeholder="Altro (da specificare)" name="altro_0"></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.10" value="1" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.10" value="2" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.10" value="3" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.10" value="4" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.10" value="5" /></td>
                                <td><input type="radio" name="Casella combinata5.5.2.2.10" value="6" /></td>
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
                        <input type="date" class="form-control" name="Preferenza relativa al Periodo dello Stage dal">
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="input-group">
                        <span class="input-group-addon">
                            al
                        </span>
                        <input type="date" class="form-control" name="al_5">
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
                                    <input type="text" class="form-control" placeholder="Nell'ambito Regionale" readonly name="Casella di controllo6.0">
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox">
                                    </span>
                                    <input type="text" class="form-control" placeholder="In Italia" readonly name="Casella di controllo6.1">
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input type="checkbox">
                                    </span>
                                    <input type="text" class="form-control" placeholder="All'Estero" readonly  name="Casella di controllo6.2">
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
                            <textarea class="form-control" rows="5" style="resize: none" name="Testo3"></textarea>
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
                                        <input type="text" class="form-control" placeholder="Certificato degli Studi effettuati" readonly name="Casella di controllo7.0">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Curriculum Vitae in italiano" readonly name="Casella di controllo7.1">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Curriculum Vitae in inglese" readonly name="Casella di controllo7.2">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-7">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <input type="checkbox">
                                        </span>
                                        <input type="text" class="form-control" placeholder="Eventuale altra documentazione ritenuta utile per la valutazione della domanda" readonly name="Casella di controllo7.3">
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-3">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Data
                        </span>
                        <input type="text" class="form-control" name="Data">
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
