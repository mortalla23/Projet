<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="fr.esigelec.jee.dao.PrelevementDao"%>
<%@ page import="fr.esigelec.jee.models.Prelevement"%>
<%@ page import="fr.esigelec.jee.dao.CommuneDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     
<%
    String param = request.getParameter("referenceprel");
    CommuneDao dao = new CommuneDao();
    String inseeCommune = dao.getInsee(param);
    response.sendRedirect("PrelevementsListe.jsp?cm=" + inseeCommune);
%>
     
</body>
</html>
