<section id="main">
    <div class="container" style="padding-top: 70px;">
        <div class="btn-group btn-group-justified" role="group" aria-label="...">
            <div class="btn-group" role="group">
                <button type="button" class="btn btn-info" onclick="window.location.href='/Tirocinando/registrazione.jsp?selection=studente'">Studente</button>
            </div>
            <div class="btn-group" role="group">
              <button type="button" class="btn btn-warning" onclick="window.location.href='/Tirocinando/registrazione.jsp?selection=azienda'">Tutor Aziendale</button>
            </div>
            <div class="btn-group" role="group">
              <button type="button" class="btn btn-success" onclick="window.location.href='/Tirocinando/registrazione.jsp?selection=tutor'">Tutor Accademico</button>
            </div>
        </div>
        <form action="Servlet_registazione" method="POST">
        <% if(request.getParameter("selection")!=null) {
            if(request.getParameter("selection").equals("studente")) { %>
            <div style="margin-top: 20px;">
                <%@include file="studente.jsp" %>
            </div>
        <% } else if(request.getParameter("selection").equals("azienda")) { %>
            <div style="margin-top: 20px;">
                <%@include file="azienda.jsp" %>
            </div>
        <% } else if(request.getParameter("selection").equals("tutor")) { %>
            <div style="margin-top: 20px;">
                <%@include file="tutor.jsp" %>
            </div>
        <%}
        } else { %>
            <div class="well" style="margin-top: 20px;">
                <%@include file="default.jsp" %>
            </div>
        <% } %>
        </form>
    </div>
</section>
