<%-- 
    Document   : studente
    Created on : 10-feb-2015, 13.23.58
    Author     : ciro
--%>

<%@page import="java.util.HashMap"%>
<h1>
    <%
        HashMap<String , String> hashmap = (HashMap) request.getSession().getAttribute("HashMap_Libretto");
    %>
</h1>
