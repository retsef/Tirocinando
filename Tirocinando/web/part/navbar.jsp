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
                    <li <%if(request.getRequestURI().toString().equals("/Tirocinando/index.jsp")) {%> class="active" <%}%>>
                        <a href="/Tirocinando/index.jsp">Home</a>
                    </li>
               
                    
                    <li <%if(request.getRequestURI().toString().equals("/Tirocinando/contatti.jsp")) {%> class="active" <%}%>>
                        <a href="/Tirocinando/contatti.jsp">Contatti</a>
                    </li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
                    <button class="btn btn-success btn-sm navbar-btn" style="margin-left:10px;" data-toggle="modal" data-target="#LoginModal">Accedi</button>
                    <%if(!request.getRequestURI().toString().equals("/Tirocinando/registrazione.jsp")) {%>
                    <a class="btn btn-danger btn-sm navbar-btn" href="registrazione.jsp">Registrati</a>
                    <%}%>
                </ul>
                <%@include file="popup_login.jsp" %>
            </div><!-- /.navbar-collapse --> 
	</div>	
</nav>
