<section id="main">
    <div class="container" style="padding-top: 70px;">
        <div class="row">
            <div class="col-lg-4">
                <h1></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <img src="./img/blank_avatar_round.jpg">
            </div>
            <div class="col-lg-8">
                <h1><%=request.getSession().getAttribute("Nome")%> <%=request.getSession().getAttribute("Cognome")%></h1>
                </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h1></h1>
            </div>
        </div>
        <div class="col-lg-4">
                <div class="panel panel-warning">
                    <div class="panel-heading"> 
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        Personali
                    </div>
                    <div class="panel-body">
                        <h5 class="page-header">Email Istituzionale : <%=request.getSession().getAttribute("Email Istituzionale")%></h5>
                        
                    </div>
                </div>
            </div>
         
</section>
