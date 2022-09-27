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
		try {
			//conectamos a la bbdd
			Connection conexion = DriverManager.getConnection(
					//"jdbc:oracle:thin:@//localhost:1521/ORCLCDB.localdomain","dummy","dummy"
					"jdbc:mysql://localhost:3306/cartas?useSSL=false","dummy","dummy"
					);
			
			//cogemos los datos que ha insertado el usuario
			String user = request.getParameter("user");
			String password = request.getParameter("password");
	 		
			//buscamos esos datos en la base de datos
			Statement instruccion = conexion.createStatement();
			String sentencia = "select * from usuario";
			ResultSet resultado = instruccion.executeQuery(sentencia);
			
			bolean encontrado = true;
			String passwordComprobar;
			String nombreComprobar;
			while (resultado.next()&& encontrado==false) {
				passwordComprobar = resultado.getString("password"));
				nombreComprobar = resultado.getString("nombre"));
				if(passwordComprobar.equals(password)&& nombreComprobar.equals(user)){
					encontrado=true;
				}
			}
			
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
				conexion.close();
		} catch {
		%>	
			<jsp:forward page="errorServidor.jsp?msg='ERROR'"></jsp:forward>
		<%
		}
		
	%>
	</body>
</html>