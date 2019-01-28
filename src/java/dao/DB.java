package dao;

import java.sql.*;

public class DB {
public static Connection getCon(){
	Connection connection=null;
	try{
	// 1. Driver register
            Class.forName("com.mysql.jdbc.Driver");  
            
            // 2. Create connection
            // getConnection is static method of DriverManager
            // getConnection takes threee parameter getConnection("server_name","db_user","db_password");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/elibrary","root","");
		
	}catch(Exception e){System.out.println(e);}
	return connection;
		
	}
}
