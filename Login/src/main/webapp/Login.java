package main.webapp;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.util.Objects;

public class Login {
	private String nombre;
	private String password;
	private Connection conexion;
	
	public Login(String nombre, String password) {
		super();
		this.nombre = nombre;
		this.password = password;
		this.conexion= conexion;
		conection();
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public Connection getConexion() {
		return conexion;
	}

	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}

	public static void conection() {
		try {
			
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?useSSL=false","dummy","dummy");
		
		//para ver si tiene conexion con la BD
		DatabaseMetaData infoBD= conexion.getMetaData();
		System.out.println("Base de datos: " + infoBD.getDatabaseProductName());
		System.out.println("Version: " + infoBD.getDatabaseProductVersion());
		
		
		
		
		
		}catch(Exception e){
			e.getMessage();
		}
	}
	
	public static void closedBbdd()  {
		conexion.close();	
	}
	
	public static boolean passwordConfirmation() {
		boolean result=false;
		
			
		
		
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
		return "Login [nombre=" + nombre + ", password=" + password + "]";
	}
	
	

}
