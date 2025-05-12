<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
 <style>
        /* Global Styles with Background Image */
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('images/bookadmin.jpg'); /* image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
            font-size: 28px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background */
            display: inline-block;
            padding: 10px 20px;
            border-radius: 10px;
        }

        /* Table Styling */
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9); /* Light background for readability */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            border-radius: 8px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-size: 16px;
        }

        th {
            background-color: #2c3e50;
            color: white;
            font-weight: 600;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: rgba(240, 240, 240, 0.7); /* Semi-transparent for consistency */
        }

        tr:hover {
            background-color: rgba(224, 247, 250, 0.8); /* Subtle hover effect */
            transition: background-color 0.3s ease-in-out;
        }

        /* Button Styling */
        .btn {
            border: none;
            padding: 8px 16px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
            transition: all 0.3s ease;
            display: inline-block;
        }

        .update-btn {
            background-color: #4caf50;
            color: white;
        }

        .update-btn:hover {
            background-color: #45a049;
        }

        .delete-btn {
            background-color: #f44336;
            color: white;
            margin-left: 10px;
        }

        .delete-btn:hover {
            background-color: #e53935;
        }

        /* Form Inline */
        form {
            display: inline;
        }

        /* Action Column Styling */
        td:last-child {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
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
<body>

<h2>Booking Details</h2>
<a href="dashboard.jsp" class="button">Dash Board</a>
<table>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Email</th>
		<th>Mobile Number</th>
		<th>NIC</th>
		<th>How Many Days</th>
		<th>Locations</th>
		<th>How Many Members</th>
		<th>Transport Mode</th>
		<th>Date(from)</th>
		<th>Date(to)</th>
		<th>Preferences</th>
		<th>Action</th>
	</tr>
	<c:forEach var="book" items="${allbooks}">
	<tr>
		<td>${book.id}</td>
		<td>${book.name}</td>
		<td>${book.email}</td>
		<td>${book.mobile}</td>
		<td>${book.nic}</td>
		<td>${book.days}</td>
		<td>${book.location}</td>
		<td>${book.members}</td>
		<td>${book.vehicle}</td>
		<td>${book.from}</td>
		<td>${book.to}</td>
		<td>${book.comments}</td>
		
		<td>
			<a href="updatebooking.jsp?id=${book.id}&name=${book.name}&email=${book.email}&mobile=${book.mobile}&nic=${book.nic}&days=${book.days}&location=${book.location}&members=${book.members}&vehicle=${book.vehicle}&from=${book.from}&to=${book.to}&comments=${book.comments}">
			<button class="btn update-btn">Update</button>
			</a>
			
			<form action="deletebook" method="post">
			<input type="hidden" name ="id" value ="${book.id}"/>
				<button type="submit" class="btn delete-btn">Delete</button>
			</form>
		</td>
		
	</tr>
	</c:forEach>
</table>

</body>
</html>