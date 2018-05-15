package com.compacademy.Connectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnectivity {
	public Connection DBConnectivity() {
	Connection connection = null;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://enteprisevms.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/vms";
	String user= "vms";
	String pass="Vendor123";
	try {
		Class.forName(driver);
		connection = (Connection) DriverManager.getConnection(url, user, pass);
	}
	catch(SQLException e) {
		System.out.println("in conn:::"+e.getMessage());
	}
	catch(Exception e) {
		
	}
	return connection;
}
}
