<!-- Modal -->
<div class="modal fade" id="SessionModal" tabindex="-1" role="dialog" aria-labelledby="SessionModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 450px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Ops!</h4>
            </div>
            <div class="modal-body">
                <div class="alert alert-danger">
                    <span class='glyphicon glyphicon-remove-sign'></span>
                    Sessione scaduta! Riesegui il Login<br>
                </div>
            </div>
        </div>
    </div>
</div>
<% if(request.getParameter("session")!=null) { 
    if(request.getParameter("session").equals("false")) { %>
    <script type="text/javascript"> 
        $('#SessionModal').modal('show');
    </script>
<% } } %>
