<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jacaranda.Card"%>
    <%@page import="com.jacaranda.Login"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
	<% 
		Login m = new Login();
		Card c = new Card(m.getPasswBD()); 
	
	%>
	<table>
	<%=c.showCard() %>
	</table>
	</body>
</html>