package com.DB;
import java.sql.*;

public class DBConnect {
	private static Connection conn = null;
	
	public static Connection getConnection() 
	{
		try {
			
			if(conn == null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage2","root","9860949212");
				System.out.println("connected");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
