package com.compacademy.DOA;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.compacademy.Connectivity.DBconnectivity;

public class loginDOA {
	public int LoginDOA(String username,String password) {
		//System.out.println(username+password);
		int result=0;
		ResultSet resultset = null;
        Statement statement = null;
        DBconnectivity dbCon= new DBconnectivity();
        Connection conn=dbCon.dbconnectivity();
        String QUERY ="INSERT INTO `ExampleDB`.`SSO`(`username`,`pwd`) VALUES ('"+username+"','"+password+"')";
        System.out.println("Query::"+QUERY);
		/*String QUERY = "SELECT * FROM Authentication WHERE username = '"+
	            username+"'          AND password = '"+password+"' ";
		try {
		 statement=conn.createStatement();	
         resultset = statement.executeQuery(QUERY);
         while (resultset.next()) {
             username = resultset.getString("username");
             password = resultset.getString("password");
            System.out.println(username+" is valid");
            result=1;
         }
		}catch(Exception e) {
			
		}*/
        try {
        	statement=conn.createStatement();	
            result= statement.executeUpdate(QUERY);
            
        }catch(Exception e) {
        	
        }
		return result;
		
	
	}

}
