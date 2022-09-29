package com.jacaranda;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.time.LocalDate;
import java.util.Objects;

public class Card  extends Login{
	private String password;
	private String name;
	private double price;
	private LocalDate adquisition ;
	private boolean active;
	
	public Card(String name, double prive, LocalDate acquisition, boolean active) {
		super(name, name);
		this.password= super.getPassword();
		this.name = name;
		this.price = prive;
		this.adquisition = acquisition;
		this.active = active;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrive() {
		return price;
	}

	public void setPrive(double prive) {
		this.price = prive;
	}

	public LocalDate getAcquisition() {
		return adquisition;
	}

	public void setAcquisition(LocalDate acquisition) {
		this.adquisition = acquisition;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	public boolean addCard() {
		boolean add=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?useSSL=false","dummy","dummy");
			
			//para ver si tiene conexion con la BD
			DatabaseMetaData infoBD= conexion.getMetaData();
			System.out.println("Base de datos: " + infoBD.getDatabaseProductName());
			System.out.println("Version: " + infoBD.getDatabaseProductVersion());
			
			//Consultamos la contaseña y el usuario 
			String query ="INSERT INTO CARTAS(password,nombre,cantidad,precio,adquisicion,baraja)\r\n"
					+ "VALUES('"+this.password+"','"+this.name+"','"+this.price+"','"+this.adquisition+"','"+this.active+"');'";
			
			//issues
			if(query != null) {
				add = true;
			}
			conexion.close();
			
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return add;
	}
	//Modifica el active de una carta de nuestra baraja
	public boolean setCard() {
		boolean set = false;
		
		return set;
	}
	
	public boolean deleteCard(int code) {//codigo y password requeridos
		boolean delete = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?useSSL=false","dummy","dummy");
			
			//para ver si tiene conexion con la BD
			DatabaseMetaData infoBD= conexion.getMetaData();
			System.out.println("Base de datos: " + infoBD.getDatabaseProductName());
			System.out.println("Version: " + infoBD.getDatabaseProductVersion());
			
			//Consultamos la contaseña y el usuario 
			String query ="DELETE FROM  CARTAS WHERE codigo ="+code+";";
			
			//issues
			if(query != null) {
				delete = true;
			}
			conexion.close();
			
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return delete;
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
		Card other = (Card) obj;
		return Objects.equals(password, other.password);
	}

	@Override
	public String toString() {
		return "Cartas [password=" + password + ", name=" + name + ", price=" + price + ", acquisition=" + adquisition
				+ ", active=" + active + "]";
	}
	
	
	
	
}
