package booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookControl {
	
	//connect database
	private static boolean isSuccess;
	private static Connection con =null;;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//insert data method
	public static boolean InsertData(String name, String email, String mobile, String nic, String days, String location,
			String members, String vehicle, String from, String to, String comments) {
		
		boolean isSuccess = false;
		
		try {
			//database connection call
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL QUERY
			String sql = "insert into bookings values (0,'"+name+"','"+email+"','"+mobile+"','"+nic+"','"+days+"','"+location+"','"+members+"','"+vehicle+"','"+from+"','"+to+"','"+comments+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Display Data function (GetByID)

	public static List<BookModel> GetByID(String Id){
		
		int convertId = Integer.parseInt(Id);//convert id to integer
		
		ArrayList <BookModel> book = new ArrayList<>();
		
		try {
			//database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from bookings where id '"+convertId+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String nic = rs.getString(5);
				String days = rs.getString(6);
				String location = rs.getString(7);
				String members = rs.getString(8);
				String vehicle = rs.getString(9);
				String from = rs.getString(10);
				String to = rs.getString(11);
				String comments = rs.getString(12);
				
				BookModel bk = new BookModel(id,name, email, mobile, nic, days, location, members, vehicle, from, to, comments);
				book.add(bk);
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return book;
	}
	
	//Get All Data function
	
	public static List<BookModel> getAllBooks(){
		
		ArrayList <BookModel> books = new ArrayList<>();
		
		try {
			//database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from bookings";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String nic = rs.getString(5);
				String days = rs.getString(6);
				String location = rs.getString(7);
				String members = rs.getString(8);
				String vehicle = rs.getString(9);
				String from = rs.getString(10);
				String to = rs.getString(11);
				String comments = rs.getString(12);
				
				BookModel bk = new BookModel(id,name, email, mobile, nic, days, location, members, vehicle, from, to, comments);
				books.add(bk);
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return books;
	}
	
	//Update Data Function
	public static boolean UpdateData(String id, String name, String email, String mobile, String nic, String days, String location,
			String members, String vehicle, String from, String to, String comments) {
		
		try {
			//Database connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "update bookings set id='"+id+"',name'"+name+"',email'"+email+"',mobile'"+mobile+"',nic'"+nic+"',days'"+days+"',location'"+location+"',members'"+members+"',vehicle'"+vehicle+"',from'"+from+"',to'"+to+"',comments='"+comments+"' where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
		

			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Delete data
	
	public static boolean deleteData(String id) {
		int convID = Integer.parseInt(id);
		
		try {
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql="delete from bookings where id = '"+convID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
