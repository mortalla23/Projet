<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="fr.esigelec.jee.dao.PrelevementDao"%>
<%@ page import="fr.esigelec.jee.models.Prelevement"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bootstrap demo</title>
<link rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous">
<style>
  body {
    background-image: url('Desktop/FichierProjet/Photo.jpg');
    background-size: cover;
    background-position: center;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp" flush="true"/>

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>

<%
String param = request.getParameter("ref");
PrelevementDao dao = new PrelevementDao();
ArrayList<Prelevement> list = dao.getPrelevementList1(param);
if(list != null && !list.isEmpty()){
%>
<table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">Numéro du département</th>
            <th scope="col">Nom de la commune</th>
            <th scope="col">Conclusion Prel</th>
        </tr>
    </thead>
    <tbody>
        <% for (Prelevement prelevement : list) { %>
        <tr>
            <td><%= prelevement.getCdept() %></td>
            <td><%= prelevement.getNomcommuneprinc() %></td>
            <td><%= prelevement.getConclusionPrel() %></td>

        </tr>
        <% } %>
    </tbody>
</table>
<%
} else {
%>
<div class="text-center">
    <h1>Aucune conclusion n'a été faite</h1>
</div>
<%
}
%>

</body>
</html>
