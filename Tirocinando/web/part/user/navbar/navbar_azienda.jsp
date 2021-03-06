<nav class="navbar navbar-default navbar-fixed-top " role="navigation">
	<div class="container">
	  <!-- Brand and toggle get grouped for better mobile display -->
	  <div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
		  <span class="sr-only">Toggle navigation</span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		  <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand">Tirocinando</a>
	  </div>

	  <!-- Collect the nav links, forms, and other content for toggling -->
	  <div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav">
                    <li class="dropdown
                        <%if(request.getRequestURI().toString().equals("/Tirocinando/modulistica.jsp") ||
                                request.getRequestURI().toString().equals("/Tirocinando/modulistica_download.jsp")) 
                        {%> active <%}%>">
                        <a href="#" class="dropdown-toggle"
                           data-toggle="dropdown" role="button" aria-expanded="false">Modulistica 
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="/Tirocinando/Modulistica">Compilazione</a></li>
                          <li><a href="/Tirocinando/ModulisticaDownload">Download</a></li>
                        </ul>
                    </li>
                    </li>
                    <li <%if(request.getRequestURI().toString().equals("/Tirocinando/tirocinanti.jsp")) {%> class="active" <%}%> >
                        <a href="/Tirocinando/Tirocinanti">Tirocinanti</a>
                    </li>
                    <li <%if(request.getRequestURI().toString().equals("/Tirocinando/home.jsp")) {%> class="active" <%}%> >
                        <a href="/Tirocinando/Profilo">Profilo</a>
                    </li>
                
		</ul>
		<ul class="nav navbar-nav navbar-right">
                    <a class="btn btn-danger btn-sm navbar-btn" href="/Tirocinando/Autenticazione?logout=true">Logout</a>
                </ul>
            </div><!-- /.navbar-collapse --> 
	</div>	
</nav>