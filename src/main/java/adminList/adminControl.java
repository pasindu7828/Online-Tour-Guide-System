package adminList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class adminControl {
	
	//connect DB
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert Data Function
		public static boolean createData(String name, String gmail, String password, String phone){
				 	
			boolean isSuccess = false;
			try {
				//DB connection call
				con = Databasecon.getConnection();
				stmt = con.createStatement();
				
				//SQL Query
				String sql= "insert into admin values (0,'"+name+"','"+gmail+"','"+password+"','"+phone+"')";
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
		
		//Administration validation
		
		public static List<adminModel> adminLoginValidate(String gmail,String password){
			
			ArrayList<adminModel> admin = new ArrayList<>();
			
			try {
				//Database connection call
				con = Databasecon.getConnection();
				stmt = con.createStatement();
				
				//SQL Query
				String sql = "select * from admin where " +"gmail='"+gmail+"'and password='"+password+"'";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int aid = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String pass = rs.getString(4);
					String phone = rs.getString(5);
					
					adminModel adm = new adminModel(aid,name,email,pass,phone);
					
					admin.add(adm);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return admin;
		}
}
