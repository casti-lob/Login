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
	HttpSession sesion=request.getSession();
	String isSesion = (String) sesion.getAttribute("user");
	String userSesion = (String) sesion.getAttribute("password");
	if(isSesion != null && userSesion != null && isSesion.equals("true")){
		String user;
	%>	
		<p>Bienvenido <%=user %></p>
		<table>
			<tr>
				<td>
						
				</td>
				<td>
					
				</td>
			</tr>
		</table>
		
	<% 
	}else{
	%>
		<jsp:forward page="error.jsp?msg=No estás logeado"></jsp:forward>
	<% 
	}
	%>
	</body>
</html>