package com.jacaranda;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.Objects;

import javax.swing.JComponent;
import javax.swing.table.DefaultTableModel;

public class Card {
	private String password;
	private String name;
	private double price;
	private LocalDate adquisition ;
	private boolean active;
	private JComponent tr;
	
	public Card() {
		
		
	
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
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("INSERT INTO CARTAS(password,nombre,precio,adquisicion,baraja) VALUES(?,?,?,?,?,?") ;
			sentencia.setString(1, password);
			sentencia.setString(2, name);
			sentencia.setString(3, "precio");
			sentencia.setString(4, "adquisicion");
			sentencia.setString(5, "baraja");
			ResultSet rs = sentencia.executeQuery();
			if(rs.next()) {
				add = true;
			}
			
			rs.close();
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return add;
	}
	public String showCard(){
		System.out.println("eee");
		
		String [] registro = new String[7];
		StringBuilder modelo = new StringBuilder();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("SELECT * FROM CARTAS");
			
			
			ResultSet rs = sentencia.executeQuery();
			while(rs.next()) {
				
				registro[0]= "<td>"+ rs.getString("password")+"</td>";
				registro[1]= "<td>"+rs.getString("codigo")+"</td>";
				registro[2]= "<td>"+ rs.getString("nombre")+"</td>";
				registro[3]= "<td>"+rs.getString("cantidad")+"</td>";
				registro[4]= "<td>"+rs.getString("precio")+"</td>";
				registro[5]= "<td>"+rs.getString("adquisicion")+"</td>";
				registro[6]= "<td>"+rs.getString("baraja")+"</td>";
				modelo.append("<tr>");
				for (int i=0;i<registro.length;i++) {
					modelo.append(registro[i]);
				}
				
				modelo.append("</tr>");
			}
			
			rs.close();
		}catch(Exception e){
				System.out.println(e.getMessage());
			}
		return modelo.toString();
		
		
	}
	
	//Modifica el active de una carta de nuestra baraja
	public boolean setCard(int code) {//Consultar
		boolean set = false;
		boolean baraja= true;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cartas?allowPublicKeyRetrieval=true&useSSL=false","dummy","dummy");
			PreparedStatement sentencia = cn.prepareStatement("select baraja from CARTAS where codigo =?");
			sentencia.setInt(1, code);
			
			ResultSet rs = sentencia.executeQuery();
			if(rs.next()) {
				//if (rs.getString(code))
				set = true;
			}
			
			rs.close();
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
			PreparedStatement sentencia = cn.prepareStatement("delete from CARTAS where codigo =?");
			sentencia.setInt(1, code);
			
			ResultSet rs = sentencia.executeQuery();
			if(rs.next()) {
				delete = true;
			}
			
			rs.close();
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
