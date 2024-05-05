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
        <p>Notre projet consiste � cr�er un site web d�di� � la
            consultation de donn�es sur la qualit� de l'eau des villes
            fran�aises. Les utilisateurs pourront rechercher et afficher des
            informations d�taill�es sur la qualit� de l'eau dans diff�rentes
            communes � travers la France. Ils auront �galement la possibilit� de
            visualiser les relev�s effectu�s et les r�sultats obtenus lors des
            contr�les sanitaires.</p>
        <p>
            L'objectif principal du site est de fournir aux utilisateurs un acc�s
            facile et convivial � ces donn�es cruciales sur la sant� publique. En
            utilisant les informations provenant de l'OpenData, notamment le jeu
            de donn�es sur les r�sultats du contr�le sanitaire de l'eau
            distribu�e commune par commune disponible sur <a
                href="https://www.data.gouv.fr/fr/datasets/resultats-du-controle-sanitaire-de-leau-distribuee-commune-par-commune">https://www.data.gouv.fr/fr/datasets/resultats-du-controle-sanitaire-de-leau-distribuee-commune-par-commune</a>,
            nous offrirons une plateforme permettant de sensibiliser les citoyens
            aux enjeux li�s � la qualit� de l'eau potable.
        </p>
        <p>En plus de la recherche et de l'affichage des donn�es, notre
            site permettra �galement de mettre en �vidence les probl�mes les plus
            importants concernant la qualit� de l'eau dans un d�partement donn�.
            Cette fonctionnalit� contribuera � informer les utilisateurs sur les
            d�fis sp�cifiques auxquels leur r�gion peut �tre confront�e en
            mati�re de qualit� de l'eau.</p>
    </div>

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <!-- Inclusion de la section Footer depuis Footer.jsp -->
   
</body>
</html>
