package com.comacademy.DAO;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.compacademy.Connectivity.DBconnectivity;

public class submisionDAO {

	public int SubmisionDAO(String submisionid, String requireid, String conid) {
		// TODO Auto-generated method stub
		int result=0;
		//ResultSet resultset = null;
        Statement statement = null;
        DBconnectivity dbCon= new DBconnectivity();
        Connection conn=dbCon.DBConnectivity();
        String QUERY ="INSERT INTO submision1(`subid`,`Rid`,`idfromdb`) VALUES ('"+submisionid+"','"+requireid+"','"+conid+"');";
        try {
        	statement=conn.createStatement();	
            result= statement.executeUpdate(QUERY);
            
        }catch(SQLException e) {
        	System.out.println(e.getMessage());
        }
		return result;
	}

}
