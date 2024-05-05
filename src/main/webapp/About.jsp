<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  body {
    background-image: url('Desktop\FichierProjet\Photo.jpg');
    background-size: cover;
    background-position: center;
}
  
</style>
<title>Insert title here</title>
<jsp:include page="Header.jsp" flush="true"/>
</head>

<body>
  
    <div class="container">
        <p>Notre projet consiste à créer un site web dédié à la
            consultation de données sur la qualité de l'eau des villes
            françaises. Les utilisateurs pourront rechercher et afficher des
            informations détaillées sur la qualité de l'eau dans différentes
            communes à travers la France. Ils auront également la possibilité de
            visualiser les relevés effectués et les résultats obtenus lors des
            contrôles sanitaires.</p>
        <p>
            L'objectif principal du site est de fournir aux utilisateurs un accès
            facile et convivial à ces données cruciales sur la santé publique. En
            utilisant les informations provenant de l'OpenData, notamment le jeu
            de données sur les résultats du contrôle sanitaire de l'eau
            distribuée commune par commune disponible sur <a
                href="https://www.data.gouv.fr/fr/datasets/resultats-du-controle-sanitaire-de-leau-distribuee-commune-par-commune">https://www.data.gouv.fr/fr/datasets/resultats-du-controle-sanitaire-de-leau-distribuee-commune-par-commune</a>,
            nous offrirons une plateforme permettant de sensibiliser les citoyens
            aux enjeux liés à la qualité de l'eau potable.
        </p>
        <p>En plus de la recherche et de l'affichage des données, notre
            site permettra également de mettre en évidence les problèmes les plus
            importants concernant la qualité de l'eau dans un département donné.
            Cette fonctionnalité contribuera à informer les utilisateurs sur les
            défis spécifiques auxquels leur région peut être confrontée en
            matière de qualité de l'eau.</p>
    </div>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <!-- Inclusion de la section Footer depuis Footer.jsp -->
   
</body>
</html>
