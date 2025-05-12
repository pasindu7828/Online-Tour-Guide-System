package tourlists;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnectfile {

	private static String path="jdbc:mysql://localhost:3306/onlinetourguide";
	private static String user="root";
	private static String pswd="7828";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(path,user,pswd);
		} 
		catch (Exception e) {
			System.out.println("Database not connect successful");
		}
		
		return con;
	}
}
