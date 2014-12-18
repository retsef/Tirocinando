<form action="Servlet_auth" method="POST">
<!-- Modal -->
<div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 450px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Accedi</h4>
      </div>
      <div class="modal-body">
          <% if(request.getParameter("error")!=null) { 
              if(request.getParameter("error").equals("true")) { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-warning-sign"/>
                    Username e Password non sono corretti!
                </div>
              <% }
          }%>
          <div class="input-group">
              <span class="input-group-addon">
                  <div class="glyphicon glyphicon-user"></div>
              </span>
            <input type="text" id="username" class="form-control" placeholder="Username">
          </div>
          <span style="padding: 7px;"></span>
          <div class="input-group">
              <span class="input-group-addon">
                  <div class="glyphicon glyphicon-lock"></div>
              </span>
            <input type="password" id="password" class="form-control" placeholder="Password">
          </div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Ok</button>
      </div>
    </div>
  </div>
</div>
          <% if(request.getParameter("error")!=null) { 
              if(request.getParameter("error").equals("true")) { %>
                <script type="text/javascript"> 
                    $('#LoginModal').modal('show');
                </script>
                <% } } %>
</form>