<%-- 
    Document   : Donwload_Modulo
    Created on : 11-gen-2015, 14.04.33
    Author     : Cristian
--%>

<div class="container" style="padding-top: 70px">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">Download Moduli</div>
        <div class="panel-body">
            <table class="table" >
                <thead>
                    <tr>
                        <td>
                            <b>
                                Moduli
                            </b>
                        </td>
                        <td>
                            <b>
                                Download
                            </b>
                        </td>
                        <td>
                            <b>
                                Upload
                            </b>
                        </td> 
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                           Proposta modulo di candidatura
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("Doc_Finale_1")%>">
                                <button type="submit" class="btn btn-primary" title="Il modulo di candidatura debitamente compilato e sottoscritto deve essere consegnato:
                                                                                    - alla segreteria didattica del Dipartimento di appartenenza, per il tirocinio obbligatorio;
                                                                                    - al Settore Protocollo per il tirocinio curriculare o extra-curriculare corredato da lettera di accompagnamento.">
                                    <span class="glyphicon glyphicon-save"></span>
                                    
                                </button> 
                            </form>
                        </td>
                        <td>
                            <form method="get" action="">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-open"></span>
                                </button> 
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Modulo privacy
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("Doc_Finale_2")%>">
                                <button type="submit" class="btn btn-primary" title="Il modulo, redatto a cura del tirocinante e debitamente firmato, deve essere allegato al progetto formativo.">
                                    <span class="glyphicon glyphicon-save"></span>
                                </button> 
                            </form>
                        </td>
                        <td>
                            <form method="get" action="">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-open"></span>
                                </button> 
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Progetto Formativo e di Orientamento
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("Doc_Finale_3")%>">
                                <button type="submit" class="btn btn-primary" title="Per il tirocinio obbligatorio, il progetto formativo e di orientamento, compilato in duplice originale dal Dipartimento, deve essere riconsegnato, debitamente firmato dal legale rappresentante del soggetto ospitante, alla segreteria didattica del Dipartimento di appartenenza.">
                                    <span class="glyphicon glyphicon-save"></span>
                                </button> 
                            </form>
                        </td>
                        <td>
                            <form method="get" action="">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-open"></span>
                                </button> 
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Lettera per trasmissione documenti
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("Doc_Finale_4")%>">
                                <button type="submit" class="btn btn-primary" title="I documenti da trasmettere al Settore ILO e Placement devono essere accompagnati da una lettera di trasmissione come da format allegato.">
                                    <span class="glyphicon glyphicon-save"></span>
                                </button> 
                            </form>
                        </td>
                        <td>
                            <form method="get" action="">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-open"></span>
                                </button> 
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Modulo richiesta attestato
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("Doc_Finale_5")%>">
                                <button type="submit" class="btn btn-primary" title="La richiesta di attestato di fine tirocinio deve essere trasmessa al Settore ILO e Placement utilizzando il format allegato.">
                                    <span class="glyphicon glyphicon-save"></span>
                                </button> 
                            </form>
                        </td>
                        <td>
                            <form method="get" action="">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-open"></span>
                                </button> 
                            </form>
                        </td>
                    </tr>
                </tbody>
            </table>   
        </div>      
    </div>
</div>

