<%-- 
Document   : relazione_finale_azienda
Created on : 24-dic-2014, 14.43.13
Author     : giannidegregorio
--%>
<style>
    .row {
        padding-bottom: 25px;
    }
</style>

<form action="" method="POST">
<section name="main">
    <div class="container" style="padding-top: 70px;">
        
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Indicare come il suo ufficio (unita/area) considera l'sperienza stage:</div>
                    <!-- Table -->
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Molto Utile</th>
                                <th>Utile</th>
                                <th>Poco Utile</th>
                                <th>Inutile</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input name="Esperienza_ufficio" type="radio" value="Molto_Utile_1"/></td>
                                <td><input name="Esperienza_ufficio" type="radio" value="Utile_1"/></td>
                                <td><input name="Esperienza_ufficio" type="radio" value="Poco_Utile_1"/></td>
                                <td><input name="Esperienza_ufficio" type="radio" value="Inutile_1"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        
        
        <div class="panel panel-default">
            <div class="panel-heading">Indicare gli eventuali problemi sorti durante lo stage:</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <input name="Experienza_problemi" type="radio" value="problema_1"/>
                        problemi nella collaborazione con lo stagista
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <input name="Experienza_problemi" type="radio" value="problema_2"/>
                        Problemi nei rapporti con l'Universita del Molise
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <input name="Experienza_problemi" type="radio" value="problema_3"/>
                        Nessun problema
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <input name="Experienza_problemi" type="radio" value="problema_4"/>
                        Altri problemi
                        <input name="Experienza_problemi_esteso" type="text" value=""/>
                    </div>
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">Indicare il livello delle seguenti variabili concerneti l'attività svolta dallo studente lo stage:</div>
            <!-- Table -->
            <table class="table">
                <thead>
                    <tr>
                        <th></th>
                        <td>Molto elevata</td>
                        <td>Elevata</td>
                        <td>Sufficiente</td>
                        <td>Insufficiente</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Motivazione</td>
                        <td><input type="radio" name="Motivazione" value="Molto_elevata_1"/></td>
                        <td><input type="radio" name="Motivazione" value="Elevata_1"/></td>
                        <td><input type="radio" name="Motivazione" value="Sufficiente_1"/></td>
                        <td><input type="radio" name="Motivazione" value="Insufficiente_1"/></td>
                    </tr>
                    <tr>
                        <td>Capacità di risolvere problemi</td>
                        <td><input type="radio" name="Problem_solving" value="Molto_elevata_2"/></td>
                        <td><input type="radio" name="Problem_solving" value="Elevata_2"/></td>
                        <td><input type="radio" name="Problem_solving" value="Sufficiente_2"/></td>
                        <td><input type="radio" name="Problem_solving" value="Insufficiente_2"/></td>
                    </tr>
                    <tr>
                        <td>Capacita di applicare le conoscienze teoriche</td>
                        <td><input type="radio" name="Teoria_applicata" value="Molto_elevata_3"/></td>
                        <td><input type="radio" name="Teoria_applicata" value="Elevata_3"/></td>
                        <td><input type="radio" name="Teoria_applicata" value="Sufficiente_3"/></td>
                        <td><input type="radio" name="Teoria_applicata" value="Insufficiente_3"/></td>
                    </tr>
                    <tr>
                        <td>Capacita di adattarsi ai diversi incarichi affidati</td>
                        <td><input type="radio" name="Incarichi" value="Molto_elevata_4"/></td>
                        <td><input type="radio" name="Incarichi" value="Elevata_4"/></td>
                        <td><input type="radio" name="Incarichi" value="Sufficiente_4"/></td>
                        <td><input type="radio" name="Incarichi" value="Insufficiente_4"/></td>
                    </tr>
                    <tr>
                        <td>Capacita di gestire le relazioni interpersonali</td>
                        <td><input type="radio" name="Relazioni" value="Molto_elevata_5"/></td>
                        <td><input type="radio" name="Relazioni" value="Elevata_5"/></td>
                        <td><input type="radio" name="Relazioni" value="Sufficiente_5"/></td>
                        <td><input type="radio" name="Relazioni" value="Insufficiente_5"/></td>
                    </tr>
                    <tr>
                        <td>Capacita di lavorare in gruppo</td>
                        <td><input type="radio" name="Gruppo" value="Molto_elevata_6"/></td>
                        <td><input type="radio" name="Gruppo" value="Elevata_6"/></td>
                        <td><input type="radio" name="Gruppo" value="Sufficiente_6"/></td>
                        <td><input type="radio" name="Gruppo" value="Insufficiente_6"/></td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <div class="panel panel-default">
            <div class="panel-heading">Indicare gli eventuali cambiamenti che ritiene necessari per migliorare l'esperienza di stage:</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        Rapporti con l'Universita(specificare)
                        <label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <input type="checkbox" aria-label="...">
                                </span>
                                <input type="text" class="form-control" aria-label="...">
                            </div><!-- /input-group -->
                        </label>
                    </div>
                    <div class="col-lg-6">
                        Programmazione del progetto stage(specificare)
                        <label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <input type="checkbox" aria-label="...">
                                </span>
                                <input type="text" class="form-control" aria-label="...">
                            </div><!-- /input-group -->
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        Coinvolgimento aziende(specificare)
                        <label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <input type="checkbox" aria-label="...">
                                </span>
                                <input type="text" class="form-control" aria-label="...">
                            </div><!-- /input-group -->
                        </label>
                    </div>
                    <div class="col-lg-6">
                        Durata dello Stage(specificare)
                        <label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <input type="checkbox" aria-label="...">
                                </span>
                                <input type="text" class="form-control" aria-label="...">
                            </div><!-- /input-group -->
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        Altri miglioramenti(specificare)
                        <label>
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <input type="checkbox" aria-label="...">
                                </span>
                                <input type="text" class="form-control" aria-label="...">
                            </div><!-- /input-group -->
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Indicare se in futuro intende partecipare nuovamente al progetto Stage:</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox" aria-label="...">
                            </span>
                            <input type="text" class="form-control" value="SI" disabled aria-label="...">
                        </div><!-- /input-group -->
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox" aria-label="...">
                            </span>
                            <input type="text" class="form-control" value="NO" disabled aria-label="...">
                        </div><!-- /input-group -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <input type="text" class="form-control" name="Opinioni" placeholder="Se NO specificare" aria-label="...">
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Esprimere un giudizio di soddisfazione rispetto ai servizi di supporto informativo e/o operativo erogati dall'Ateneo:</div>
                    <!-- Table -->
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Insoddisfatto</th>
                                <th>Poco soddisfatto</th>
                                <th>Soddisfatto</th>
                                <th>Molto Soddisfatto</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input name="Esperienza_ateneo" type="radio" value="Insoddisfatto"/></td>
                                <td><input name="Esperienza_ateneo" type="radio" value="Poco_soddisfatto"/></td>
                                <td><input name="Esperienza_ateneo" type="radio" value="Soddisfatto"/></td>
                                <td><input name="Esperienza_ateneo" type="radio" value="Molto_Soddisfatto"/></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
                         
        <div class="row">
            <div class="col-lg-12">
                <textarea class="form-control" name="Testo5" value="2" rows="4" style="resize: none">Eventuali osservazioni, suggerimenti e proposte</textarea>
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
    </div>
    
</section>
</form>
                                
                        
















