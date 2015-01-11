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
                                Descrizione
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
                            <form method="get" action="absoluteDiskPath_dest">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-save"></span>
                                    Download</button> <%= request.getSession().getAttribute("Doc_Finale")%>
                            </form>
                        </td>
                        <td>
                            <span class="glyphicon glyphicon-open"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Modulo privacy
                        </td>
                        <td>
                            <span class="glyphicon glyphicon-save"></span>
                        </td>
                        <td>
                            <span class="glyphicon glyphicon-open"></span>
                        </td>
                    </tr>
                </tbody>
            </table>   
        </div>      
    </div>
</div>

