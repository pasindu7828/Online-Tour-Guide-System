<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Payment</title>
 <style>
        /* Global Styles */
        body {
            background-color: #f4f6f9;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Form Container */
        form {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%; /* Make it responsive */
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        tr {
            margin-bottom: 15px;
        }

        td {
            padding: 12px 0;
        }

        /* Input Fields Styling */
        input[type="text"] {
            width: 100%;
            padding: 10px 15px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: all 0.3s;
            box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
        }

        input[type="text"]:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.2);
            outline: none;
        }

        /* Submit Button */
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #fff;
            background-color: #3498db;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        /* Heading Styles */
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px; /* Space between heading and form */
        }
    </style>
</head>

<body>

<%
	String id=request.getParameter("id");
	String cardno =request.getParameter("cardno");
	String cardholder=request.getParameter("cardholder");
	String month=request.getParameter("month");
	String year=request.getParameter("year");
	String cvv=request.getParameter("cvv");
	String fullname=request.getParameter("fullname");
	String nic=request.getParameter("nic");
	String mobileno=request.getParameter("mobileno");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	String postalcode=request.getParameter("postalcode");
	String district=request.getParameter("district");
	String country=request.getParameter("country");
		
%>

<form action="UpdateServlet" method="post">

	<table>
		<tr>
			<td>ID :</td>
			<td><input type="text" name="id" value="<%=id%>" readonly  ></td>
		</tr>
		<tr>
			<td>Card No :</td>
			<td><input type="text" name="cardno" value="<%=cardno%>" required  ></td>
		</tr>
		<tr>
			<td>Card Holder :</td>
			<td><input type="text" name="cardholder" value="<%=cardholder%>" required  ></td>
		</tr>
		<tr>
			<td>Month :</td>
			<td><input type="text" name="month" value="<%=month%>" required  ></td>
		</tr>
		<tr>
			<td>Year :</td>
			<td><input type="text" name="year" value="<%=year%>" required  ></td>
		</tr>
		<tr>
			<td>CVV :</td>
			<td><input type="text" name="cvv" value="<%=cvv%>" required  ></td>
		</tr>
		<tr>
			<td>Full Name :</td>
			<td><input type="text" name="fullname" value="<%=fullname%>" required  ></td>
		</tr>
		<tr>
			<td>NIC :</td>
			<td><input type="text" name="nic" value="<%=nic%>" required  ></td>
		</tr>
		<tr>
			<td>Mobile No :</td>
			<td><input type="text" name="mobileno" value="<%=mobileno%>" required  ></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><input type="text" name="email" value="<%=email%>" required  ></td>
		</tr>
		<tr>
			<td>Address :</td>
			<td><input type="text" name="address" value="<%=address%>" required  ></td>
		</tr>
		<tr>
			<td>Postal code :</td>
			<td><input type="text" name="postalcode" value="<%=postalcode%>" required  ></td>
		</tr>
		<tr>
			<td>District :</td>
			<td><input type="text" name="district" value="<%=district%>" required  ></td>
		</tr>
		<tr>
			<td>Country :</td>
			<td><input type="text" name="country" value="<%=country%>" required  ></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Submit"></td>
		</tr>
		
	</table>
	
</form>

</body>
</html>