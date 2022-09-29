package com.jacaranda;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.util.Objects;

public class Login {
	private String name;
	private String password;
	
	public Login(String nombre, String password) {
		super();
		this.name = nombre;
		this.password = password;
		
	}

	public String getNombre() {
		return name;
	}

	public void setNombre(String nombre) {
		this.name = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

	
	public boolean passwordConfirmation() {
		boolean result=false;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?useSSL=false","dummy","dummy");
			
			//para ver si tiene conexion con la BD
			DatabaseMetaData infoBD= conexion.getMetaData();
			System.out.println("Base de datos: " + infoBD.getDatabaseProductName());
			System.out.println("Version: " + infoBD.getDatabaseProductVersion());
			
			//Consultamos la contaseña y el usuario 
			String query ="SELECT password, nombre FROM USUARIO where password ='"+this.password+"' and nombre ='"+this.name+"'";
			if(query != null) {
				result = true;
			}
			conexion.close();
			
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			
		
		
		return result;
	}
	
	

	@Override
	public int hashCode() {
		return Objects.hash(password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Login other = (Login) obj;
		return Objects.equals(password, other.password);
	}

	@Override
	public String toString() {
		return "Login [nombre=" + name + ", password=" + password + "]";
	}
}
