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
            <div class="panel-heading">Azienda/Ente</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Denominazione
                            </span>
                            <input type="text" name="nome_a" class="form-control" value="<%=request.getSession().getAttribute("Denominazione")%>" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Indirizzo
                            </span>
                            <input type="text" name="indirizzo_a" class="form-control" value="<%=request.getSession().getAttribute("Indirizzo")%>" readonly>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Citta'
                            </span>
                            <input type="text" name="citta_a" class="form-control" value="<%=request.getSession().getAttribute("Citta")%>" readonly>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="input-group">
                            <span class="input-group-addon">
                                C.A.P.
                            </span>
                            <input type="text" name="cap_a" class="form-control" value="<%=request.getSession().getAttribute("cap")%>" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Numero Tel
                            </span>
                            <input type="text" name="tel_a" class="form-control" value="<%=request.getSession().getAttribute("telefono")%>" readonly>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Numero Fax
                            </span>
                            <input type="text" name="fax_a" class="form-control" value="<%=request.getSession().getAttribute("numero_fax")%>" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Email
                            </span>
                            <input type="text" name="email_a" class="form-control" value="<%=request.getSession().getAttribute("email")%>" readonly>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Sito Web
                            </span>
                            <input type="text" name="sito_a" class="form-control" value="<%=request.getSession().getAttribute("sito")%>" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Codice Fiscale o Partita IVA
                            </span>
                            <input type="text" name="cf_a" class="form-control" value="<%=request.getSession().getAttribute("codice fiscale")%>" readonly>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Codice Fiscale o Partita IVA
                            </span>
                            <input type="text" name="ateco_a" class="form-control">
                        </div>
                    </div>
                </div>   
                <div class="row">
                    <div class="col-lg-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Nominativo Dirigente/Funzionario
                            </span>
                            <input class="form-control" name="dirigente_a" type="text" placeholder="Abilitato alla firma dell'eventuale convenzione con l'Università">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Posizione ricoperta
                            </span>
                            <input class="form-control" name="posizione_dir_a" type="text">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                N. di dipendenti
                            </span>
                            <input class="form-control" name="n_dipendenti" type="text">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Numero di anni di convenzione
                            </span>
                            <input class="form-control" name="n_anni_a" type="text">
                        </div>
                    </div>
                </div>
            </div>
        </div>           
        <div class="panel panel-default">
            <div class="panel-heading">Tutor Aziendale</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Referente presso l'Azienda/Ente
                            </span>
                            <input class="form-control" type="text" name="referente_a">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Posizione ricoperta
                            </span>
                            <input class="form-control" type="text" name="posizione_ref_a">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Nato/a a
                            </span>
                            <input class="form-control" type="text" name="ref_nato_a">
                        </div>    
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                il
                            </span>
                            <input class="form-control" type="text" name="ref_nato_il_a">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Telefono
                            </span>
                            <input class="form-control" type="text" name="tel_ref_a">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                Fax
                            </span>
                            <input class="form-control" type="text" name="fax_ref_a">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="panel panel-default">
            <div class="panel-heading">Settore attività economica</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Agricoltura" disabled name="Agricoltura">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Trasporti" disabled name="Trasporti">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Industria (comprese costruzioni)" disabled name="Industria">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Artigianato" disabled name="Artigianato">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Commercio e pubblici esercizi" disabled name="Commercio">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Pubblica Amministrazione" disabled name="P.A">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Credito - Assicurazioni" disabled name="Credito">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Cooperazione" disabled name="Cooperazione">
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox">
                            </span>
                            <input type="text" class="form-control" placeholder="Servizi" disabled name="Servizi">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <input type="checkbox" name="Altro"> <!-- *** DA CONTROLLARE ***-->
                            </span>
                            <input type="text" class="form-control" placeholder="Altro (da specificare)" name="Altro_testo">
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="panel panel-default">
            <div class="panel-heading">Obiettivi formativi</div>
            <div class="panel-body">
                <div class="panel panel-default">
                <div class="panel-heading">Illustrazione dei contenuti e delle attività del progetto di stage</div>
                    <div class="panel-body">
                        <textarea class="form-control" name="contenuti_progetto" rows="5" style="resize: none" placeholder="Se possibile specificare operativamente"></textarea>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">Attività previste per gli stagisti nel progetto</div>
                    <div class="panel-body">
                        <textarea class="form-control" name="attivita_progetto" rows="5" style="resize: none" placeholder="Precisare, se possibile, impostazione, gestione, supporto operativo,competenza specialistica, ecc"></textarea>
                    </div>
                </div>
            </div>
        </div>    
        <div class="panel panel-default">
            <div class="panel-heading">Modalità di effettuazione dello stage</div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Ufficio presso cui avrebbe luogo lo stage
                                </span>
                                <input class="form-control" type="text" placeholder="Ufficio/Servizio/Unità organizzativa/ecc." name="ufficio_a">
                            </div>
                        </div>
                    </div><!-- chiude il row -->   
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Sede dello stesso
                                </span>
                                <input class="form-control" type="text" name="sede_ufficio_a">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Disponibilità ad ospitare n.
                                </span>
                                <input class="form-control" type="text" placeholder="di tirocinanti" name="disponibilita_tir_a">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Durata dello stage  (in mesi)
                                </span>
                                <input class="form-control" type="text" name="durata_stage_a">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Periodo dell'anno preferibile
                                </span>
                                <input class="form-control" type="text" name="periodo_stage_a">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Giorni della settimana
                                </span>
                                <input class="form-control" type="text" placeholder="indicare possibilmente più alternative" name="giorni_stage_a">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    Orario giornaliero
                                </span>
                                <input class="form-control" type="text" placeholder="indicare possibilmente più alternative" name="orario_stage_a">
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                    <div class="panel-heading">Eventuali agevolazioni e/o contributi che l'Azienda / Ente è in grado di mettere a disposizione dello stagista</div>
                        <div class="panel-body">
                            <textarea class="form-control" name="agevolazioni_a" rows="5" style="resize: none" placeholder="servizi aziendali, mensa, trasporti, rimborsi spese, borse di studio, ecc."></textarea>
                        </div>
                    </div>
                    <div class="panel panel-default">
                    <div class="panel-heading">Indicare se lo stagista potrà o meno utilizzare i risultati (o parte di essi) dell'attività svolta nell'azienda, ente o studio professionale nel periodo di stage a scopo di pubblicazione</div>
                        <div class="panel-body">
                            <div class="col-lg-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input name="radio_1" type="radio" name="autorizzazione_risultati" value="1">
                                    </span>
                                    <input type="text" class="form-control" placeholder="Può utilizzare" disabled>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input name="radio_1" type="radio" name="autorizzazione_risultati" value="2">
                                    </span>
                                    <input type="text" class="form-control" placeholder="Può utilizzare solo in parte" disabled>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <input name="radio_1" type="radio" name="autorizzazione_risultati" value="3">
                                    </span>
                                    <input type="text" class="form-control" placeholder="Non può utilizzare" disabled>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        <div class="panel panel-default">
            <div class="panel-heading">Conoscenza / Requisiti</div>
            <div class="panel-body">
                <div class="panel panel-default">
                <div class="panel-heading">Conoscenze tecniche, informatiche, richieste agli stagisti</div>
                    <div class="panel-body">
                        <textarea class="form-control" name="conoscenze_tecniche" rows="3" style="resize: none" placeholder="Tipo e livello"></textarea>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">Eventuali conoscenze linguistiche richieste</div>
                    <div class="panel-body">
                        <textarea class="form-control" name="conoscenze_linguistiche" rows="3" style="resize: none"></textarea>
                    </div>
                </div>
                <div class="panel panel-default">
                <div class="panel-heading">Alcune caratteristiche gradite</div>
                    <div class="panel-body">
                        <textarea class="form-control" name="caratteristiche_gradite" rows="3" style="resize: none"></textarea>
                    </div>
            </div>
                </div>
            </div>
           
    <div class="panel panel-default">
        <div class="panel-heading">Altre indicazioni</div>
        <div class="panel-body">
            <div class="panel panel-default">
            <div class="panel-heading">Ulteriori precisazioni ed indicazioni utili a predisporre una proficua collaborazione</div>
                <div class="panel-body">
                    <textarea class="form-control" name="altre_indicazioni" rows="5" style="resize: none"></textarea>
                </div>
            </div>
            </div>
        </div>
                        
        <div class="row">
                <div class="col-lg-4">
                    <div class="input-group">
                        <span class="input-group-addon">
                            Data
                        </span>
                        <input type="text" class="form-control"  value="<%=new java.util.Date()%>" name="data_a">
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
</section>