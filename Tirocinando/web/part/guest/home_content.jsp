<style>
    .center {
        display: block; 
        margin-left: auto; 
        margin-right: auto;
        text-align: center;
    }
    
    @font-face {
        font-family: Allura-Regular;
        font-style: normal;
        font-weight: normal;
        src: url("fonts/Allura-Regular.otf") format("opentype");
    }
    
    .masthead-brand {
        font-family: Allura-Regular;
        font-size: 70px;
    }
    
</style>
<header class="banner" role="banner" style="padding-top: 35px; background-color: #a6e1ec">
    <div class="container" style="">
        <div class="row">
           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <img class="center" src="img/Logo.png">
               <h3 class="center masthead-brand" >Tirocinando</h3>
           </div>
        </div>
    </div>
</header>
<section id="main">
    <div class="container" style="padding-top: 70px;">
        <div class="row">
            <div class="col-lg-4">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                        Studente
                    </div>
                    <div class="panel-body">
                        <h2 class="page-header">Supporto</h2>
                        <p>Tieni traccia delle tue attivita' tramite il libretto diario</p>
                        <h2 class="page-header">Modulistica</h2>
                        <p>Di' pure addio ad inferni burocratici come documenti, segreterie e timbri</p>
                        <h2 class="page-header">Integrato</h2>
                        <p>Scarica il plugin per Esse3
                        <form method="GET" action="/Tirocinando/plugin/tirocinio_tutor.user.js">
                            <button type="submit" class="btn btn-primary">
                                <span class="glyphicon glyphicon-cloud-download" aria-hidden="true"> Studente</span>
                            </button>
                        </form>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-warning">
                    <div class="panel-heading"> 
                        <span class="glyphicon glyphicon-briefcase" aria-hidden="true"></span>
                        Tutor Aziendale
                    </div>
                    <div class="panel-body">
                        <h2 class="page-header">Supporto</h2>
                        <p>Tieni traccia delle attivita' dei tuoi Tirocinanti</p>
                        <h2 class="page-header">Modulistica</h2>
                        <p>Di' pure addio ad inferni burocratici come documenti, segreterie e timbri</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <span class="glyphicon glyphicon-flag" aria-hidden="true"></span>
                        Tutor Accademico
                    </div>
                    <div class="panel-body">
                        <h2 class="page-header">Supporto</h2>
                        <p>Tieni traccia delle attivita' dei tuoi studenti</p>
                        <h2 class="page-header">Integrato</h2>
                        <p>Scarica il plugin per Esse3 
                        <form method="GET" action="/Tirocinando/plugin/tirocinio_tutor.user.js">
                            <button type="submit" class="btn btn-primary">
                                <span class="glyphicon glyphicon-cloud-download" aria-hidden="true"> Tutor</span>
                            </button>
                        </form>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
