<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>inicio</title>
	</head>
	<body>
<%
	HttpSession sesion = request.getSession();
	String isSesion = (String) sesion.getAttribute("login");
	String userSesion = (String) sesion.getAttribute("user");
	
	if(isSesion != null && userSesion != null && isSesion.equals("true")){
	%>
		<p>Bienvenido</p>
		<table border="1px">
		
		</table>
		
	<% 
	 }else{
	%>
		 <jsp:forward page="error.jsp?msg='No est�s logeado'"></jsp:forward> 
	<% 
	 } 
	%>
	</body>
</html>