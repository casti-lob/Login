<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>login</title>
	</head>
	<body>
	<% 
		String user = request.getParameter("user");
		String password = request.getParameter("password");
		if(user.equals()&& password.equals()){
			HttpSession sesion=request.getSession();
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
	%>
	</body>
</html>