<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="fr.esigelec.jee.dao.ResultatDao"%>
<%@ page import="fr.esigelec.jee.models.Resultats"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
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
	background-image: url('Desktop\FichierProjet\Photo.jpg');
	background-size: cover;
	background-position: center;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" flush="true" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>

	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">Cddept</th>
				<th scope="col">Referenceprel</th>
				<th scope="col">Proprietes</th>
				<th scope="col">Unite de reference</th>
				<th scope="col">Limite</th>
				<!-- Correction de la faute de frappe -->

			</tr>
		</thead>

		<%
        String param = request.getParameter("ref");
        ResultatDao dao = new ResultatDao();
        ArrayList<Resultats> list = dao.getResultatList(param);
        for (Resultats resultat : list) {
        %>
		<tbody>
			<tr>
				<td><%= resultat.getCddept() %></td>
				<td><%= resultat.getReferenceprel()%></td>
				<td><%= resultat.getLibMinparametre() %></td>
				<td><%= resultat.getCdunitereference() %></td>
				<td><%= resultat.getRefqual() %></td>
			</tr>
		</tbody>
		<% } %>
	</table>

</body>
</html>
