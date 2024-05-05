<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="fr.esigelec.jee.dao.PrelevementDao"%>
<%@ page import="fr.esigelec.jee.models.Prelevement"%>
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
	<%
		String param = request.getParameter("cm");
		PrelevementDao dao = new PrelevementDao();
		ArrayList<Prelevement> list = dao.getPrelevementList(param);
		if (list.size() !=0) {
			
		%>
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">CodeReseau</th>
				<th scope="col">CodeCommune</th>
				<th scope="col">NomCommune</th>
				<th scope="col">ReferencePrel</th>
				<th scope="col">Action</th>
			</tr>
			<%  for (Prelevement prelevement : list) { %>
		</thead>


		<tbody>
			<tr>
				<td><%=prelevement.getCdreseau()%></td>
				<td><%=prelevement.getInseecommuneprinc()%></td>
				<td><%=prelevement.getNomcommuneprinc()%></td>
				<td><%=prelevement.getReferenceprel()%></td>
				<td>
					<div class="dropdown">
						<a class="btn btn-secondary dropdown-toggle" href="#"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Voir plus </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item"
								href="ResultatsListe.jsp?ref=<%=prelevement.getReferenceprel()%>">Résultats</a></li>
						</ul>
					</div>
				</td>
			</tr>
		</tbody>
		<%  } %>
	</table>
	<%
		
		
		} else{
		%>
	<div class=text-center>
		<h1>Aucun prélèvement n'a été fait dans cette commune</h1>
	</div>
	<%} %>

</body>
</html>
