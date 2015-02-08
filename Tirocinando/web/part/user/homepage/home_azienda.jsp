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
            <div class="col-lg-4" >
                    <img class="img-responsive" alt="Responsive image" src="./img/blank_avatar_round.jpg">
            </div>
            <div class="col-lg-8">
            <h1><%=request.getSession().getAttribute("Denominazione")%></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h1> </h1>
            </div>
        </div>
        <div class="col-lg-12">
                <div class="panel panel-warning">
                    <div class="panel-heading"> 
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        Personali
                    </div>
                    <div class="panel-body">
                        <h5 class="page-header">C.F o P.IVA: <%=request.getSession().getAttribute("C.F/P.IVA")%></h5>
                        <h5 class="page-header">Indirizzo: <%=request.getSession().getAttribute("Indirizzo")%></h5>
                        <h5 class="page-header">Email: <%=request.getSession().getAttribute("Email")%></h5>
                        <h5 class="page-header">Sito Web: <%=request.getSession().getAttribute("Sito Web")%></h5>
                        <h5 class="page-header">Città: <%=request.getSession().getAttribute("Citta")%></h5>
                        <h5 class="page-header">Cap: <%=request.getSession().getAttribute("C.A.P.")%></h5>
                        <h5 class="page-header">N.Telefono: <%=request.getSession().getAttribute("Telefono")%></h5>
                        <h5 class="page-header">Tutor Accademico: <%=request.getSession().getAttribute("")%></h5>
                        <h5 class="page-header">N.Dipendenti: <%=request.getSession().getAttribute("N_Dipendenti")%></h5>
                        <h5 class="page-header">Nominativo dirigente abbilitato alla firma: <%=request.getSession().getAttribute("Funzionale Firma Convenzione")%></h5>
                        <h5 class="page-header">Posizione Ricoperta: <%=request.getSession().getAttribute("Posizione Ricoperta")%></h5>
                    </div>
                    
                </div>
            </div>
        <!--
        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading"> 
                    <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                    Tirocinanti
                </div>
                <div class="panel-body">
                    <h5 class="page-header">Nome:</h5>
                    <h5 class="page-header">Cognome:</h5>
                    <h5 class="page-header">Ore Fatte:</h5>
                    <h5 class="page-header">Ore Mancanti:</h5>

                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
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
        -->
</section>
