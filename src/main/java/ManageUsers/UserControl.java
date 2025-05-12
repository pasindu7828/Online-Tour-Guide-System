package ManageUsers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserControl {
	
	        //connect DB
			private static boolean isSuccess;
			private static Connection con = null;
			private static Statement stmt = null;
			private static ResultSet rs = null;
			
			//Insert Data Function
			public static boolean createData(String name, String email, String password, String phone){
					 	
				boolean isSuccess = false;
				try {
					//DB connection call
					con = ConnectDB.getConnection();
					stmt = con.createStatement();
					
					//SQL Query
					String sql= "insert into users values (0,'"+name+"','"+email+"','"+password+"','"+phone+"')";
					int rs=stmt.executeUpdate(sql);
					if(rs>0) {
						isSuccess=true;
					}
					else {
						isSuccess=false;
					}
				} 
				catch (Exception e) {
					e.printStackTrace();
				}
				return isSuccess;
				
			}
			
			//User validation function
			
			public static List<UserModel> UserLoginValidate(String email,String password){
				
				ArrayList<UserModel> user = new ArrayList<>();
				
				try {
					//Database connection call
					con = ConnectDB.getConnection();
					stmt = con.createStatement();
					
					//SQL Query
					String sql = "select * from users where " +"email='"+email+"'and password='"+password+"'";
					
					rs = stmt.executeQuery(sql);
					
					if(rs.next()) {
						int uid = rs.getInt(1);
						String name = rs.getString(2);
						String gmail = rs.getString(3);
						String pass = rs.getString(4);
						String phone = rs.getString(5);
						
						UserModel us = new UserModel(uid,name,gmail,pass,phone);
						
						user.add(us);
					}
					
				}
				catch (Exception e) {
					e.printStackTrace();
				}
				
				return user;
			}
			
}
