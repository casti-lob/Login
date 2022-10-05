package com.jacaranda;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.swing.JComponent;
import javax.swing.table.DefaultTableModel;

public class Card {
	private String password;
	private String name;
	private double price;
	private LocalDate adquisition ;
	private boolean active;
	
	
	public Card(String password) {
		super();
		this.password = password;
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
	
	public boolean addCard(String name,double cost, boolean active) {
		boolean add=false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja) VALUES(?,?,?,NOW(),?)");
			sentencia.setString(1, this.password);
			sentencia.setString(2, name);
			sentencia.setDouble(3, cost);
			sentencia.setBoolean(4, active);
			sentencia.executeUpdate();
			add = true;
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return add;
	}
	public List<String> showCard(){
		
		List<String> registro = new ArrayList<String>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("SELECT * FROM CARTAS where password =?");
			sentencia.setString(1, password);
			
			ResultSet rs = sentencia.executeQuery();
			while(rs.next()) {
				
				registro.add(rs.getString("password")) ;
				registro.add(rs.getString("codigo")) ;
				registro.add(rs.getString("nombre"))  ;
				registro.add(rs.getString("precio"));
				registro.add(rs.getString("adquisicion"));
				registro.add(rs.getString("baraja"));
				registro.add(rs.getString("<a href='eliminar.jsp?key="+rs.getString("codigo")+"'>Borrar</a>"));
				
				
				
				
			}
			
			rs.close();
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return registro;
		
		
	}
	
	//Modifica el active de una carta de nuestra baraja
	public boolean setCard(int code) {
		boolean set = false;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			
			PreparedStatement sentencia1 = cn.prepareStatement("SELECT baraja FROM CARTAS where codigo =?");
			sentencia1.setInt(1, code);
			ResultSet rs = sentencia1.executeQuery();
			
			boolean num = false;
			if(rs.toString().equals("1")) {
				num = true;
			}
			PreparedStatement sentencia = cn.prepareStatement("UPDATE CARTAS SET baraja = ? WHERE password = ?;");
			sentencia.setBoolean(1, num);
			sentencia.setInt(2, code);
			
			sentencia.executeUpdate();
			set = true;
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return set;
	}
	
	public boolean deleteCard(int code) {//codigo y password requeridos
		boolean delete = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("DELETE FROM CARTAS WHERE codigo = ?");
			sentencia.setInt(1, code);
			
			sentencia.executeUpdate();
			
			PreparedStatement sentencia2 = cn.prepareStatement("select codigo from CARTAS where codigo =?");
			sentencia2.setInt(1, code);
			
			ResultSet rs = sentencia.executeQuery();
			if(!rs.next()) {
				delete = true;
			}	
			
			cn.close();
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
