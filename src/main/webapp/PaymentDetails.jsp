<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payments Details</title>
<style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #444;
            margin-bottom: 30px;
            font-size: 28px;
        }

        /* Table Styling */
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
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
            color: #fff;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f8f8f8;
        }

        tr:hover {
            background-color: #e0f7fa;
            transition: background-color 0.3s ease-in-out;
        }

        /* Button Styling */
        .btn {
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
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
  
  /* Search Box Styling */
        #searchInput {
            width: 50%;
            margin: 0 auto 30px;
            padding: 12px 20px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 25px;
            outline: none;
            transition: all 0.3s;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        #searchInput:focus {
            border-color: #3498db;
            box-shadow: 0 0 10px rgba(52, 152, 219, 0.5);
        }
        
    </style>
</head>
<body>

<h2>Payment Details Table</h2>

<input type="text" id="searchInput" placeholder="search">
 <a href="dashboard.jsp" class="button">Dash Board</a>
<table>
	<tr>
		<th>ID</th>
		<th>CardNo</th>
		<th>Card Holder</th>
		<th>Month</th>
		<th>Year</th>
		<th>CVV</th>
		<th>FullName</th>
		<th>NIC</th>
		<th>Mobile Number</th>
		<th>Email</th>
		<th>Address</th>
		<th>Postal Code</th>
		<th>District</th>
		<th>Country</th>
		<th>Action</th>
	</tr>
	<c:forEach var="pay" items="${allpays}">
	<tr>
		<td>${pay.id}</td>
		<td>${pay.cardno}</td>
		<td>${pay.cardholder}</td>
		<td>${pay.month}</td>
		<td>${pay.year}</td>
		<td>${pay.cvv}</td>
		<td>${pay.fullname}</td>
		<td>${pay.nic}</td>
		<td>${pay.mobileno}</td>
		<td>${pay.email}</td>
		<td>${pay.address}</td>
		<td>${pay.postalcode}</td>
		<td>${pay.district}</td>
		<td>${pay.country}</td>
		
		<td>
			<a href="Update.jsp?id=${pay.id}&cardno=${pay.cardno}&cardholder=${pay.cardholder}&month=${pay.month}&year=${pay.year}&cvv=${pay.cvv}&fullname=${pay.fullname}&nic=${pay.nic}&&mobileno=${pay.mobileno}&email=${pay.email}&address=${pay.address}&postalcode=${pay.postalcode}&district=${pay.district}&country=${pay.country}">
				<button class="btn update-btn">Update</button>
			</a>
			
			<form action="DeleteServlet" method="post">
			<input type="hidden" name="id" value="${pay.id}">
				<button type="submit" class="btn delete-btn">Delete</button>
			</form>
		</td>
	</tr>
	</c:forEach>
</table>

<script type="text/javascript">
//search function
function filterTable() {
    var input, filter, table, tr, td, txtValue;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.querySelector("table");
    tr = table.getElementsByTagName("tr");

    for (let i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td");
        let rowVisible = false; // Track row visibility

        for (let j = 0; j < td.length; j++) {
            if (td[j]) {
                txtValue = td[j].textContent || td[j].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    rowVisible = true;
                    break; // Stop checking further cells if match found
                }
            }
        }
        tr[i].style.display = rowVisible ? "" : "none"; // Show or hide row
    }
}

// Add event listener for the input field
document.getElementById("searchInput").addEventListener("input", filterTable);
</script>

</body>
</html>