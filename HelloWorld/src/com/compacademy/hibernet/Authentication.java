package com.compacademy.hibernet;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="Authentication")
public class Authentication {
	private int id;


	private String username,password;  
	//private String firstName,lastName;  

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	  
	
	  
	  
}

