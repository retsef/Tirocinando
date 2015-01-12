<%-- 
    Document   : Download_Modulo_Azienda
    Created on : 12-gen-2015, 17.46.21
    Author     : VittorioBarile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                           Modulo offerta stage
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("Doc_Finale_1")%>">
                                <button type="submit" class="btn btn-primary" title="Per attivare il tirocinio/stage presso le proprie strutture è necessario che il modulo di offerta stage sia debitamente compilato, sottoscritto dal Legale rappresentante e consegnato:
                                                                                     - alla segreteria didattica del Dipartimento di appartenenza, per il tirocinio obbligatorio;
                                                                                     - al Settore Protocollo per il tirocinio curriculare o extra-curriculare.">
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
                           Convenzione
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("")%>">
                                <button type="submit" class="btn btn-primary" title="Per attivare un tirocinio è necessario che il soggetto ospitante sottoscriva, in duplice originale, una convenzione con la quale verranno regolati i rapporti tra Università e Azienda/Ente che dovrà essere consegnata:
                                                                                    - alla segreteria didattica del Dipartimento di appartenenza, per il tirocinio obbligatorio;
                                                                                    - al Settore Protocollo, corredata da lettera di accompagnamento.">
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
                           Modulo Autorizzazione accoglienza per tesi
                        </td>
                        <td>
                            <form method="get" action="<%= request.getSession().getAttribute("")%>">
                                <button type="submit" class="btn btn-primary" title="L'Azienda/Ente, accolta la richiesta ad ospitare lo studente per approfondire le conoscenze inerenti la tesi di laurea in elaborazione, deve trasmettere questo modulo -debitamente compilato- alla Segreteria del Dipartimento che le ha inviato la Richiesta di Accoglienza per la tesi.">
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


