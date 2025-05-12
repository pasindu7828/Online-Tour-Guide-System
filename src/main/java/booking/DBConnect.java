package booking;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url="jdbc:mysql://localhost:3306/onlinetourguide";
	private static String user="root";
	private static String pwd="7828";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,pwd);
		} catch (Exception e) {
			System.out.println("Database not connect");
		}
		
		return con;
	}

}
