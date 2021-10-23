package misc;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectivity {
		public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
			String url = "jdbc:mysql://localhost:3306/studentprofile";
			String uname = "root";
			String pass = "Venkat1@#";
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, uname, pass);
			return con;
		}
}
