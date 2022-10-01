<%@page import="com.jacaranda.Card"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
	<p>Entro</p>
		<%
		HttpSession sesion = request.getSession();
		String isSesion = (String) sesion.getAttribute("login");
		String userSesion = (String) sesion.getAttribute("user");
		
		
		
		if(isSesion != null && userSesion != null && isSesion.equals("true")){
			Card c = new Card();
			c.showCard();
			
		%>
			<%=c.showCard() %>
		 }else{
		
			 <jsp:forward page="error.jsp?msg='No estás logeado'"></jsp:forward> 
		<% 
		 } 
		%>
	</body>
</html>