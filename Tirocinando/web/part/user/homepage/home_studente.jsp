<style>
    @media (max-width: 768px) {
        .img-responsive {
            margin: 0 auto;
        }
    }
    
</style>

<section id="main">
    <div class="container" style="padding-top: 70px;">
        <div class="row">
            <div class="col-lg-4">
                <h1></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <img class="img-responsive" alt="Responsive image" src="./img/blank_avatar_round.jpg">
            </div>
            <div class="col-lg-8">
                <h3><%=request.getSession().getAttribute("Nome")%> <%=request.getSession().getAttribute("Cognome")%></h3>
                <h3>Mat.<%=request.getSession().getAttribute("Matricola")%></h3>
            </div>
        </div>
    <div class="row">
        <div class="col-lg-12"></div>
    </div>
    <div class="row">
        <div class="col-lg-4">
            <div class="panel panel-info">
                <div class="panel-heading"> 
                    <span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
                    Accademiche
                </div>
                <div class="panel-body">
                    <h5 class="page-header">Anno di immatricolazione:</h5>
                    <h5 class="page-header">Media Voti:</h5>
                    <h5 class="page-header">Email: <%=request.getSession().getAttribute("Email")%></h5>
                </div>
            </div>
        </div>
         
        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading"> 
                    <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                    Tirocinio
                </div>
                <div class="panel-body">
                    <h5 class="page-header">Status:</h5>
                    <h5 class="page-header">Ore Fatte:</h5>
                    <h5 class="page-header">Ore Mancanti:</h5>

                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-danger">
                <div class="panel-heading"> 
                    <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                 Libretto Diario
                </div>
                <div class="panel-body">
                    <h5 class="page-header">Status:</h5>
                    <h5 class="page-header">Ore:</h5>
                    <h5 class="page-header">ADF:</h5>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-success">
                <div class="panel-heading"> 
                    <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        Personale
                </div>
                <div class="panel-body">
                        <h5 class="page-header">Data di nascita: <%=request.getSession().getAttribute("Data nascita")%></h5>
                        <h5 class="page-header">Cittadinanza: <%=request.getSession().getAttribute("Nazionalita")%></h5>
                        <h5 class="page-header">Luogo di nascita: <%=request.getSession().getAttribute("Comune nascita")%> (<%=request.getSession().getAttribute("Provincia nascita")%>)</h5>
                        <h5 class="page-header">C.F: <%=request.getSession().getAttribute("Codice Fiscale")%></h5>
                        <h5 class="page-header">Residenza: <%=request.getSession().getAttribute("Indirizzo")%> <%=request.getSession().getAttribute("N_Civico")%> , <%=request.getSession().getAttribute("Comune residenza")%> (<%=request.getSession().getAttribute("Provincia residenza")%>)</h5>
                        <h5 class="page-header">N.Telefonico: <%=request.getSession().getAttribute("Recapito Telefonico")%></h5>
                </div>
            </div>
        </div>
    </div>
</section>
