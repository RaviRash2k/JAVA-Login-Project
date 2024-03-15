package Utill;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
		String url = "jdbc:mysql://localhost:3306/customerprofile";
		String user = "root";
		String pass = "sqlroot";
		
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url, user, pass);
		
		return con;
		
	}
}
