<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

</head>
<body>
<div class="container">
<%
	String tid = request.getParameter("tid");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String email = request.getParameter("email");
	String phoneno = request.getParameter("phoneno");
	String language = request.getParameter("language");
	String duration = request.getParameter("duration");
	String price = request.getParameter("price");
	String description = request.getParameter("description");
%>

<form  name="guideForm" action="updateTourList" method="post" onsubmit="return validateForm()">
		<table>
			
			<tr>
				<td>Tour Guide ID :</td>
				<td><input type="text" name="tid" value="<%=tid%>" readonly></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><input type="text" name="name" value="<%=name%>" required></td>
			</tr>
			<tr>
				<td>Age :</td>
				<td><input type="text" name="age" value="<%=age%>" required></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" value="<%=email%>" required></td>
			</tr>
			<tr>
				<td>Phone Number :</td>
				<td><input type="text" name="phoneno" value="<%=phoneno%>" required></td>
			</tr>
			<tr>
				<td>Language :</td>
				<td><input type="text" name="language" value="<%=language%>" required></td>
			</tr>
			<tr>
				<td>Duration :</td>
				<td><input type="text" name="duration" value="<%=duration%>" required></td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="text" name="price" value="<%=price%>" required></td>
			</tr>
			<tr>
				<td>Description :</td>
				<td><input type="text" name="description" value="<%=description%>" required></td>
			</tr>
			<tr>
				
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
			
		</table>
	</form>
</div>	
</body>
</html>