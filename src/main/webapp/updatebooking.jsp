<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Booking Details </title>
<style>
/* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

/* Body Styling */
body {
    background-color: #e8f4fa; /* Light blue background */
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Form Container */
form {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
    width: 420px;
    border-top: 6px solid #5bc0de; /* Blue top border */
}

/* Table Styling */
table {
    width: 100%;
    border-spacing: 0 15px; /* Add space between rows */
}

/* Table Rows and Cells */
td {
    padding: 8px 0;
    vertical-align: middle;
    color: #333;
}

/* Input Fields */
input[type="text"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    transition: border-color 0.3s;
}

input[type="text"]:focus {
    border-color: #5bc0de; /* Light blue focus border */
    outline: none;
}

/* Submit Button Styling */
input[type="submit"] {
    width: 100%;
    padding: 12px;
    background-color: #5bc0de;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 18px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin-top: 10px;
}

input[type="submit"]:hover {
    background-color: #31b0d5; /* Darker blue on hover */
}

/* Labels */
td:first-child {
    font-weight: bold;
    text-align: right;
    padding-right: 10px;
    color: #555;
}

/* Responsive Design */
@media (max-width: 768px) {
    form {
        width: 90%;
    }
    td:first-child {
        text-align: left;
        padding-right: 0;
    }
}


</style>
</head>
<body>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String nic = request.getParameter("nic");
	String days = request.getParameter("days");
	String location = request.getParameter("location");
	String members = request.getParameter("members");
	String vehicle = request.getParameter("vehicle");
	String from = request.getParameter("from");
	String to = request.getParameter("to");
	String comments = request.getParameter("comments");
%>
<h1>update Details</h1>
	<form action="updateBookServlet" method="post">
		<table>
			<tr>
				<td>ID :</td>
				<td><input type="text" name="id" value="<%=id%>" readonly></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value="<%=name%>" required></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" value="<%=email%>" required></td>
			</tr>
			<tr>
				<td>Mobile Number :</td>
				<td><input type="text" name="mobile" value="<%=mobile%>" required></td>
			</tr>
			<tr>
				<td>NIC :</td>
				<td><input type="text" name="nic" value="<%=nic%>" required></td>
			</tr>
			<tr>
				<td>How Many Days :</td>
				<td><input type="text" name="days" value="<%=days%>" required></td>
			</tr>
			<tr>
				<td>Location :</td>
				<td><input type="text" name="location" value="<%=location%>" required></td>
			</tr>
			<tr>
				<td>How Many Members :</td>
				<td><input type="text" name="members" value="<%=members%>" required></td>
			</tr>
			<tr>
				<td>Transport Mode :</td>
				<td><input type="text" name="vehicle" value="<%=vehicle%>" required></td>
			</tr>
			<tr>
				<td>Date (from) :</td>
				<td><input type="text" name="from" value="<%=from%>" required></td>
			</tr>
			<tr>
				<td>Date (to) :</td>
				<td><input type="text" name="to" value="<%=to%>" required></td>
			</tr>
			<tr>
				<td>Preferences :</td>
				<td><input type="text" name="comments" value="<%=comments%>" required></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Submit Changes"></td>
			</tr>
			
		</table>
	</form>
</body>
</html>