<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<jsp:include page="Header.jsp" flush="true" />
<style>
body {
	background-image: url('Desktop\FichierProjet\Photo.jpg');
	background-size: cover;
	background-position: center;
}
</style>
</head>
<body>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<form action="commune" method="post">
		<div class="container">
			<div class="container-fluid">
				<form class="col-md-12" role="search">
				   <label>Saisir Code postal </label>
					<input class="form-control form-control-lg me-2" type="search"
						placeholder=" code postal" aria-label="Search" id="referenceprel"
						name="referenceprel">
				</form>
			</div>
			<div class="container-fluid mt-3">
				<div class="d-flex justify-content-center">
					<!-- Utilisez les classes flexbox pour centrer le bouton -->
					<button class="btn btn-outline-success" type="submit">Chercher</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
