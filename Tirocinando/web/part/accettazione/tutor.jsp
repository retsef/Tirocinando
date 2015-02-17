<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="main">
    <div class="container" style="padding-top: 70px;">
        <div class="row">
            <!-- content here -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table" >
                    <tr>
                        <td>Matricola</td>
                        <td>Nome</td>
                        <td>Cognome</td>

                    </tr>
                    <%
                        if(request.getAttribute("List_Studenti_attesa")!=null) {
                            ArrayList<HashMap<String, String>> table = (ArrayList<HashMap<String, String>>) request.getAttribute("List_Studenti_attesa");
                        if(!table.isEmpty())
                        for(HashMap<String, String> hashmap : table){
                    %>
                    <tr>
                        <td><%=hashmap.get("matricola")%></td>
                        <td><%=hashmap.get("nome")%></td>
                        <td><%=hashmap.get("cognome")%></td>
                        <td>
                            <form action="Servlet_accettazione" method="POST">
                                <input type="submit" name="matricola" value=<%=hashmap.get("matricola")%> >
                            </form>
                           <%-- <form name="Accettazione" action="Servlet_accettazione" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="matricola" value="<%= matricola%>">
                                <input type="submit" value="APPROVA">
                            </form>
                            <%--  <form action="Servlet_accettazione">
                                <input type="hidden" name="matricola" value="<%= matricola%>">
                                <input type="submit" value="APPROVA">
                            </form>
                            --%>
                        </td>
                    </tr>
                    <% } 
                    }%>
                    </table>
                </div>
            </div>
        </div>                

    </div>
</section>