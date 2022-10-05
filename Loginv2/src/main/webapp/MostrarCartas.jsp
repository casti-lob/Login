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
		for(int i =0;i<list.size();i++){
			element.append("<tr>");
			element.append("<td>"+list.get(0)+"</td>");
			element.append("<td>"+list.get(1)+"</td>");
			element.append("<td>"+list.get(2)+"</td>");
			element.append("<td>"+list.get(3)+"</td>");
			element.append("<td>"+list.get(4)+"</td>");
			element.append("</tr>");
		}
		element.append("</table>");
			
		
		%>
		<%= element.toString()%>
		
	</div>
	</body>
</html>