package com.compacademy.Connectivity;

import java.sql.Connection;
import java.sql.DriverManager;

//import com.mysql.jdbc.Connection;

public class DBconnectivity {
	public Connection dbconnectivity() {
		Connection connection = null;
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://comacademy.cnxhkbauy6wb.us-east-2.rds.amazonaws.com:3306/ExampleDB";
		String user= "example";
		String pass="sreyo123";
		try {
			Class.forName(driver);
			connection = (Connection) DriverManager.getConnection(url, user, pass);
		}catch(Exception e) {
			
		}
		return connection;
	}

}
