<!-- Modal -->
<div class="modal fade" id="RegistrazioneModal" tabindex="-1" role="dialog" aria-labelledby="RegistrazioneModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 450px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Urra!</h4>
            </div>
            <div class="modal-body">
                <div class="alert alert-success">
                    <span class='glyphicon glyphicon-ok'></span>
                    Registrazione effettuata con successo!<br>
                </div>
            </div>
        </div>
    </div>
</div>
<% if(request.getParameter("success")!=null) { 
    if(request.getParameter("success").equals("true")) { %>
    <script type="text/javascript"> 
        $('#RegistrazioneModal').modal('show');
    </script>
<% } } %>
