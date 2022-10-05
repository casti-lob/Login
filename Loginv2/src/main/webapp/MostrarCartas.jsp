<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jacaranda.Card"%>
    <%@page import="com.jacaranda.Login"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="MostrarCartas.css">
		<title>Insert title here</title>
	</head>
	<body>
	<% 
		Login m = new Login();
		Card c = new Card(m.getPasswBD()); 
	
	%>
	<div align="center">
		
		<%
		List<Card> list = c.showCard();
		StringBuilder element = new StringBuilder(); 
		element.append("<table>");
		element.append("<tr><td>Contraseña</td> <td>Código</td><td>Nombre</td><td>Precio</td><td>Fecha Adquisición</td><td>Carta en Uso</td></tr>");
		for(int i =0;i<list.size();i++){
			element.append("<tr>");
			element.append("<td>"+list.get(i).getPassword()+"</td>");
			element.append("<td>"+list.get(i).getCode()+"</td>");
			element.append("<td>"+list.get(i).getName()+"</td>");
			element.append("<td>"+list.get(i).getPrice()+"</td>");
			element.append("<td>"+list.get(i).getAdquisition()+"</td>");
			element.append("<td>"+list.get(i).getActive()+"</td>");
			element.append("<td><a href='eliminar.jsp?key="+list.get(i).getCode()+"'>Borrar</a></td>");
			element.append("<td><a href='modificar.jsp?key="+list.get(i).getCode()+"'>Modificar</a></td>");
			element.append("</tr>");
		}
		element.append("</table>");
			
		
		%>
		<%= element.toString()%>
		
	</div>
	</body>
</html>