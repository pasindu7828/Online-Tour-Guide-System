<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    background-color: #f0f0f0; /* Light grey background */
    font-family: Arial, sans-serif; /* Use a clear font */
}

h1 {
    text-align: center; /* Center the heading */
    color: #00796b; /* Teal color for the heading */
}

form {
    width: 50%; /* Adjust form width to be 50% of the parent */
    margin: 20px auto; /* Center the form with margin */
    padding: 20px; /* Add some padding */
    background-color: white; /* White background for the form */
    border-radius: 5px; /* Rounded corners for form */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow */
}

input[type="text"] {
    width: 100%; /* Make text input full width */
    padding: 10px; /* Add padding for better usability */
    border: 1px solid #ccc; /* Light border */
    border-radius: 4px; /* Slightly rounded corners */
}

input[type="submit"] {
    width: 100%; /* Full width button */
    padding: 10px; /* Padding for button */
    border: none; /* Remove border */
    border-radius: 4px; /* Slightly rounded corners */
    background-color: #00796b; /* Teal button */
    color: white; /* White text */
    font-size: 16px; /* Adjust font size */
    cursor: pointer; /* Pointer cursor on hover */
}

input[type="submit"]:hover {
    background-color: #005f57; /* Darker teal on hover */
}



</style>
</head>
<body>

<%
		String requestID = request.getParameter("requestID");
		String Name = request.getParameter("Name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String Destination = request.getParameter("Destination");
		String PickLocation = request.getParameter("PickLocation");
		String DropLocation = request.getParameter("DropLocation");
		String Vehicle = request.getParameter("Vehicle");
		String NoOfPassengers = request.getParameter("NoOfPassengers");
	%>
	
	<h1>Customer Account Delete</h1>

	<form action="DeleleteRequestServlet" method="post">
	<table>
		<tr>
			<td>Request ID</td>
			<td><input type="text" name="cusid" value="<%= requestID %>" readonly></td>
		</tr>
			
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>

</body>
</html>