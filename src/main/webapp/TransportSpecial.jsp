<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinetourguide";
String userid = "root";
String password = "7828";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
connection = DriverManager.getConnection(connectionUrl + database, userid, password);
System.out.println("Database Conneection is success!!");
try{
statement = connection.createStatement();
String sql = "select * from transportrequest";
resultSet = statement.executeQuery(sql);
%>
 
 
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Orbitor,business,company,agency,modern,bootstrap4,tech,software">
<meta name="author" content="themefisher.com">
 
  <title>Transport</title>
<style>
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #e0f7fa;
    margin: 0;
    padding: 20px;
    line-height: 1.6;
}



input[type="submit"] {
    background-color: #00796b;
    color: white;
    padding: 12px 24px;
    margin: 5px 0;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #004d40;
}

a {
    text-decoration: none;
    color: #00796b;
    font-weight: bold;
    font-size: 16px;
}

a:hover {
    text-decoration: underline;
    color: #004d40;
}

br {
    margin-bottom: 10px;
}

form {
    margin: 20px 0;
}

body #top {
    background: linear-gradient(to right, #00796b, #4db6ac);
    color: #fff;
    padding: 20px;
    text-align: center;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}
 .button {
    display: inline-block;
    padding: 12px 24px;
    font-size: 16px;
    font-weight: bold;
    color: white;
    background-color: #4CAF50;
    border: none;
    border-radius: 8px;
    text-decoration: none;
    text-align: center;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .button:hover {
    background-color: #45a049;
  }

</style>

</head>
<a href="dashboard.jsp" class="button">Dash Board</a>
<h1>Trasport Details</h1>

<br>
 

 
 
<%

				while (resultSet.next()) {
			%>
<!--start iteration-->
RequestID :<%=resultSet.getInt("requestID") %><br>
Name :<%=resultSet.getString("Name") %><br>
Email :<%=resultSet.getString("email") %><br>
Date :<%=resultSet.getString("date") %><br>
Destination:<%=resultSet.getString("Destination") %><br>
PickUpLocation:<%=resultSet.getString("PickLocation") %><br>
DropOffLocation :<%=resultSet.getString("DropLocation") %><br>
Vehicle :<%=resultSet.getString("Vehicle") %><br>
Number Of Passengers :<%=resultSet.getString("NoOfPassengers") %><br>




<c:url value="UpdateTransReq.jsp" var="transupdate">

<c:param name="requestID" value='<%=resultSet.getString("requestID")%>' />
<c:param name="Name" value='<%=resultSet.getString("Name")%>' />
<c:param name="email" value='<%=resultSet.getString("email")%>' />
<c:param name="date" value='<%=resultSet.getString("date")%>' />
<c:param name="Destination" value='<%=resultSet.getString("Destination")%>' />
<c:param name="PickLocation" value='<%=resultSet.getString("PickLocation")%>' />
<c:param name="DropLocation" value='<%=resultSet.getString("DropLocation")%>' />
<c:param name="Vehicle" value='<%=resultSet.getString("Vehicle")%>' />
<c:param name="NoOfPassengers" value='<%=resultSet.getString("NoOfPassengers")%>' />
</c:url>
<a href="${transupdate}">
<input type = "submit" name ="submit" value="Update data"><br>

</a>



<form action="DeleleteRequestServlet" method="post">
	<table>
		<tr>
			
			<td><input type="text" name="cusid" value='<%=resultSet.getString("requestID")%>' hidden></td>
		</tr>
		</table>
		
	<input type="submit" name="submit" value="Delete Account"><br>

</form>
	

<%
				}
}catch(Exception e){
	e.printStackTrace();
}
			%>
<!--end of the iteration-->

 
 
	
  
 
  </body>
</html>