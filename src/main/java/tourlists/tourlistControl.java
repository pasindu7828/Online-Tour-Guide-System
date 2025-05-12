package tourlists;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class tourlistControl {

	//connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean createData(String name, String age, String email, String phoneno, String language,
			String duration, String price, String description) {
		
		boolean isSuccess = false;
		try {
			//DB connection call
			con = DBConnectfile.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql= "insert into tourguides values (0,'"+name+"','"+age+"','"+email+"','"+phoneno+"','"+language+"','"+duration+"','"+price+"','"+description+"')";
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
	
	//Display Data Function - GetByTid
	public static List<tourlistmodel> GetByTid(String Tid){
		
		int convertTid = Integer.parseInt(Tid);
		
		ArrayList<tourlistmodel> guide = new ArrayList<>();
		
		try {
			//DB Connection
			con = DBConnectfile.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql="select * from tourguides where id '"+convertTid+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int tid=rs.getInt(1);
				String name=rs.getString(2);
				String age=rs.getString(3);
				String email=rs.getString(4);
				String phoneno=rs.getString(5);
				String language=rs.getString(6);
				String duration=rs.getString(7);
				String price=rs.getString(8);
				String description=rs.getString(9);
				
				tourlistmodel tl = new tourlistmodel(tid, name, age, email, phoneno, language, duration, price, description);
				guide.add(tl);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return guide;
	}
	
	//Get All Data
	public static List<tourlistmodel> getAllGuides(){
		
		ArrayList<tourlistmodel> guides = new ArrayList<>();
		
		try {
			//DB Connection
			con = DBConnectfile.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql="select * from tourguides";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int tid=rs.getInt(1);
				String name=rs.getString(2);
				String age=rs.getString(3);
				String email=rs.getString(4);
				String phoneno=rs.getString(5);
				String language=rs.getString(6);
				String duration=rs.getString(7);
				String price=rs.getString(8);
				String description=rs.getString(9);
				
				tourlistmodel tl = new tourlistmodel(tid, name, age, email, phoneno, language, duration, price, description);
				guides.add(tl);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return guides;
	}
	
	//Update function
	public static boolean updateTourList(String tid, String name, String age, String email, String phoneno, String language,
			String duration, String price, String description) {
		
		try {
			//DB Connection
			con = DBConnectfile.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql="update tourguides set name='"+name+"',age='"+age+"',email='"+email+"',phoneno='"+phoneno+"',language='"+language+"',duration='"+duration+"',price='"+price+"',description='"+description+"'"
					+"where tid='"+tid+"'";
			
			int rs= stmt.executeUpdate(sql);
			
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
	
	//Delete function
	
	public static boolean deleteGuide(String tid) {
		int conTid = Integer.parseInt(tid);
		
		try {
			//DB connection
			con = DBConnectfile.getConnection();
			stmt = con.createStatement();
			
			String sql="delete from tourguides where tid='"+conTid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
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
}
