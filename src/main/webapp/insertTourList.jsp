<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tour Guide List</title>
<link rel="stylesheet" href="CSS/tourlist.css">
<script>
    function validateForm() {
        const name = document.forms["guideForm"]["name"].value;
        const email = document.forms["guideForm"]["email"].value;
        const age = document.forms["guideForm"]["age"].value;
        const price = document.forms["guideForm"]["price"].value;
        const phoneno = document.forms["guideForm"]["phoneno"].value;
        const duration = document.forms["guideForm"]["duration"].value;
        
        
     // Validate duration (integer only)
        if (!Number.isInteger(Number(duration)) || duration <= 0) {
            alert("Duration must be a positive integer.");
            return false;
        }
        
     // Validate phone number (10 digits)
        const phonePattern = /^\d{10}$/;
        if (!phonePattern.test(phoneno)) {
            alert("Phone number must be exactly 10 digits.");
            return false;
        }

        // Validate name (no numbers allowed)
        const namePattern = /^[A-Za-z\s]+$/;
        if (!namePattern.test(name)) {
            alert("Name should contain only letters.");
            return false;
        }

        // Validate email format
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Validate age (numeric only)
        if (isNaN(age) || age <= 0) {
            alert("Age must be a positive number.");
            return false;
        }

        // Validate price (starts with $)
        if (price[0] !== '$') {
            alert("Price must start with a '$' symbol.");
            return false;
        }

        return true;
    }
</script>

<style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/railway-bridge.webp'); /* Replace with your image path */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the image */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            margin: 0;
            padding: 20px;
        }
    </style>
</head>
<body>
 <div class="container">  
<h2>Enter Tour Guide Details</h2>
	<form name="guideForm" action="createListServlet" method="post" onsubmit="return validateForm()">
		<table>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="text" name="age" required></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" required></td>
			</tr>
			<tr>
				<td>Phone Number :</td>
				<td><input type="text" name="phoneno" required></td>
			</tr>
			<tr>
				<td>Language :</td>
				<td><input type="text" name="language" required></td>
			</tr>
			<tr>
				<td>Duration (weeks) :</td>
				<td><input type="text" name="duration" required></td>
			</tr>
			<tr>
				<td>Price (in Dollars) :</td>
				<td><input type="text" name="price" required></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="description" required></td>
			</tr>
			<tr>
				
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
			
		</table>
	</form>
</div>	
</body>
</html>