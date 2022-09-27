<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>login</title>
	</head>
	<body>
	<% 
		
			
			//Comprobamos que tiene conexion con la bbdd
			
			//cogemos los datos que ha insertado el usuario
			String user = request.getParameter("user");
			String password = request.getParameter("password");
	 		
			//buscamos esos datos en la base de datos
			
			
		
			//comprobamos que esos datos son correctos
			if(user.equals(nombreComprobar)&& password.equals(passwordComprobar)){
				HttpSession sesion = request.getSession();
				sesion.setAttribute("login","true");
				sesion.setAttribute("user",user);
		%>
				<jsp:forward page="inicio.jsp"></jsp:forward>
		<% 
			}else{
		%>
				<jsp:forward page="error.jsp?msg='ERROR'"></jsp:forward>
		<%
			}
				
				//cerramos la conexion con la BD
				
		
		
		
		
	%>
	</body>
</html>