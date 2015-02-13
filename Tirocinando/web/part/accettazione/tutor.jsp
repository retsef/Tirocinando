<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="main">
    <div class="container" style="padding-top: 70px;">
        <div class="row">
            <!-- content here -->
            <table>
                <tr>
                    <td>Matricola</td>
                    <td>Nome</td>
                    <td>Cognome</td>

                </tr>
                <%
                    ArrayList<HashMap<String, String>> table = (ArrayList<HashMap<String, String>>) request.getAttribute("Studenti");
                    for(HashMap<String, String> hashmap : table){
                %>
                <tr>
                    <td><%=hashmap.get("matricola")%></td>
                    <td><%=hashmap.get("nome")%></td>
                    <td><%=hashmap.get("cognome")%></td>
                    <td>
                        <form action="Servlet_accettazione" method="POST" enctype="multipart/form-data">
                         <input type="hidden" name="matricola" value="<%=hashmap.get("matricola")%>">
                            <input type="submit" value=<%=hashmap.get("matricola")%> >
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
                <% } %>
            </table>
        </div>                

    </div>
</section>