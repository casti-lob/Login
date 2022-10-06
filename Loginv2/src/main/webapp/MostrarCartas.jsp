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
		<table>
			<tr align="center">
				<td align="center" colspan="3">
					<img height="" width="550px" src="https://images.gog-statics.com/934e329b61f010fb039c7a6d82b477ad254bf70a5e0a0709b4c43524645f2a42.jpg">
				</td>
			</tr>
		</table>
	</div>		
	
	<div align="center">

		<%
		List<Card> list = c.showCard();
		StringBuilder element = new StringBuilder(); 
		element.append("<table>");
		//element.append("<tr align='center'><td><img width='150px'src='mof.png'></td>");
		//element.append("<td><h2>MODIFICAR</h2></td></tr>");
		element.append("<tr><td>Contraseña</td> <td>Código</td><td>Nombre</td><td>Precio</td><td>Fecha Adquisición</td><td>Carta en Uso</td><td>Borrar</td><td>Modificar</td></tr>");
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
		<div align="center">
			<table>
				<tr align="center">
					<td align="center" colspan="3">
						<h2>AGREGAR</h2>
						<a href="agregar.html"><img width="150px"  src="add.png" ></a>			
					</td>
				</tr>
			</table>
		</div>
		
	
	</body>
</html>