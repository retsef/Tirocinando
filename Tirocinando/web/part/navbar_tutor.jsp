<%-- 
    Document   : navbartutor
    Created on : 15-dic-2014, 15.30.00
    Author     : ginfl_000
--%>

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
                    <li>
                        <a href="/Tirocinando/index.jsp">Home</a>
                    </li>
                    <li>
                        
                        <li <%if(request.getRequestURL().toString().equals("http://localhost:8080/tutor_tirocinanti.jsp")) {%> class="active" <%}%>>
                        <a href="/Tirocinando/tutor_tirocinanti.jsp">Tirocinanti</a>
                    </li>
                       
                  
                    <li>
                        <a href="#">Profilo</a>
                    </li>
                
		</ul>
		<ul class="nav navbar-nav navbar-right">
                    <a class="btn btn-danger btn-sm navbar-btn" href="#">Logout</a>
                </ul>
            </div><!-- /.navbar-collapse --> 
	</div>	
</nav>