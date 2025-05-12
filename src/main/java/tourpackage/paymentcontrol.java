package tourpackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class paymentcontrol {
	
	//connect database
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//insert data function
	
	public static boolean insertData(String cardno, String cardholder, String month, String year, String cvv,
			String fullname, String nic, String mobileno, String email, String address, String postalcode,
			String district, String country) {
		 
		boolean isSuccess = false;
		
		try {
			//DB connect call
			con = DBConnectiontg.getConnection();
			stmt=con.createStatement();
			
			//SQL QUERY
			String sql="insert into payments values (0,'"+cardno+"','"+cardholder+"','"+month+"','"+year+"','"+cvv+"','"+fullname+"','"+nic+"','"+mobileno+"','"+email+"','"+address+"','"+postalcode+"','"+district+"','"+country+"')";
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Display data function - GetById
	
	public static List<paymentmodel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <paymentmodel> pay = new ArrayList<>();
		
		try {
			//DBConnection
			con = DBConnectiontg.getConnection();
			stmt=con.createStatement();
			
			//Query		
			String sql= "select * from payments where id '"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String cardno = rs.getString(2);
				String cardholder = rs.getString(3);
				String month = rs.getString(4);
				String year = rs.getString(5);
				String cvv = rs.getString(6);
				String fullname = rs.getString(7);
				String nic = rs.getString(8);
				String mobileno = rs.getString(9);
				String email = rs.getString(10);
				String address = rs.getString(11);
				String postalcode = rs.getString(12);
				String district = rs.getString(13);
				String country = rs.getString(14);
				
				paymentmodel pm = new paymentmodel(id, cardno, cardholder, month, year, cvv, fullname, nic, mobileno, email, address, postalcode, district, country);
				
				pay.add(pm);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return pay;
	}
	
	//GetAll Data
	
	public static List<paymentmodel> getAllpays(){
		ArrayList <paymentmodel> pays = new ArrayList<>();
		
		try {
			//DBConnection
			con = DBConnectiontg.getConnection();
			stmt=con.createStatement();
			
			//Query		
			String sql= "select * from payments";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String cardno = rs.getString(2);
				String cardholder = rs.getString(3);
				String month = rs.getString(4);
				String year = rs.getString(5);
				String cvv = rs.getString(6);
				String fullname = rs.getString(7);
				String nic = rs.getString(8);
				String mobileno = rs.getString(9);
				String email = rs.getString(10);
				String address = rs.getString(11);
				String postalcode = rs.getString(12);
				String district = rs.getString(13);
				String country = rs.getString(14);
				
				paymentmodel pm = new paymentmodel(id, cardno, cardholder, month, year, cvv, fullname, nic, mobileno, email, address, postalcode, district, country);
				
				pays.add(pm);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return pays;
		
		
	}
	
	//Update Data
	public static boolean updateData(String id, String cardno, String cardholder, String month, String year, String cvv,
			String fullname, String nic, String mobileno, String email, String address, String postalcode,
			String district, String country) {
		
		try {
			//DBConnection
			con = DBConnectiontg.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "update payments set cardno='"+cardno+"',cardholder='"+cardholder+"',month='"+month+"',year='"+year+"',cvv='"+cvv+"',fullname='"+fullname+"',nic='"+nic+"',mobileno='"+mobileno+"',email='"+email+"',address='"+address+"',postalcode='"+postalcode+"',district='"+district+"',country='"+country+"'"
					+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//Delete Data Function
	
	public static boolean deleteData(String id) {
		int convID = Integer.parseInt(id);
		try {
			//DB Connection
			con = DBConnectiontg.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "delete from payments where id='"+convID+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	

}
