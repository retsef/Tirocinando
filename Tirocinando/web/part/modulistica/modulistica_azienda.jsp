<%-- 
    Document   : modulistica_azienda
    Created on : 18-dic-2014, 13.23.49
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
            <div class="panel panel-heading">Azienda/Ente</div>
            <div class="panel panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Nominativo Dirigente/Funzionario
                            </span>
                            <input class="form-control" type="text" placeholder="Abilitato alla firma dell'eventuale convenzione con l'Università">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Posizione ricoperta
                            </span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                N. di dipendenti
                            </span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- chiude il panel-default -->
                
        <div class="panel panel-default">
            <div class="panel panel-heading">Tutor Aziendale</div>
            <div class="panel panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Referente presso l'Azienda/Ente
                            </span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Posizione ricoperta
                            </span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                </div><!-- chiude il row -->
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Telefono
                            </span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Fax
                            </span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="panel panel-default">
            <div class="panel panel-heading">Tutor Aziendale</div>
            <div class="panel panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Agricoltura" disabled>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Trasporti" disabled>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Industria (comprese costruzioni)" disabled>
                        </div>
                    </div>
                </div><!-- chiude il row -->
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Artigianato" disabled>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Commercio e pubblici esercizi" disabled>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Pubblica Amministrazione" disabled>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Credito - Assicurazioni" disabled>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Cooperazione" disabled>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Servizi" disabled>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Altro (da specificare)">
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="panel panel-default">
            <div class="panel panel-heading">Obiettivi formativi</div>
            <div class="panel panel-body">
                <div class="panel panel-default">
                <div class="panel panel-heading">Illustrazione dei contenuti e delle attività del progetto di stage</div>
                    <div class="panel panel-body">
                        <textarea class="form-control" name="attività_progetto" rows="5" style="resize: none" placeholder="Se possibile specificare operativamente"></textarea>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel panel-heading">Attività previste per gli stagisti nel progetto</div>
                    <div class="panel panel-body">
                        <textarea class="form-control" name="attività_progetto" rows="5" style="resize: none" placeholder="Precisare, se possibile, impostazione, gestione, supporto operativo,competenza specialistica, ecc"></textarea>
                    </div>
                </div>
            </div>
        </div>        
                
                
                
            
            
            
        
    </div>
</section>