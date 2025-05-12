<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tour Guide Details</title>
 <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 40px;
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            color: #333;
        }
        body {
    text-align: center; /* Centers inline-block elements, like h2 */
    background-color: #f4f6f9;
    padding: 20px;
    margin: 0;
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

        /* Table Styling */
        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
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
            text-transform: uppercase;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f8f8f8;
        }

        tr:hover {
            background-color: #e0f7fa;
            transition: background-color 0.3s ease-in-out;
        }

        /* Button Styling */
        .glow-button {
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 25px;
            transition: all 0.3s ease;
            color: white;
            background-color: #3498db;
            box-shadow: 0 0 15px rgba(52, 152, 219, 0.5);
        }

        .glow-button:hover {
            background-color: #2980b9;
            box-shadow: 0 0 20px rgba(52, 152, 219, 0.8);
        }

        .glow-button.secondary {
            background-color: #e74c3c;
        }

        .glow-button.secondary:hover {
            background-color: #c0392b;
        }

        /* Form Inline Styling */
        form {
            display: inline;
        }

        /* Action Column */
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
<h2>Tour Guides Details</h2>

<input type="text" id="searchInput" placeholder="search...">
<br>
 <a href="dashboard.jsp" class="button">Dash Board</a>
 
<table>
	<tr>
		<th>Tour Guide ID</th>
		<th>Name</th>
		<th>Age</th>
		<th>Email</th>
		<th>Contact No</th>
		<th>Language</th>
		<th>Duration</th>
		<th>Price</th>
		<th>Description</th>
		<th>Action</th>
	</tr>
	<c:forEach var="guide" items="${allGuides}">
	<tr>
		<td>${guide.tid}</td>
		<td>${guide.name}</td>
		<td>${guide.age}</td>
		<td>${guide.email}</td>
		<td>${guide.phoneno}</td>
		<td>${guide.language}</td>
		<td>${guide.duration}</td>
		<td>${guide.price}</td>
		<td>${guide.description}</td>
		
		<td>
			<a href="updateGuide.jsp?tid=${guide.tid}&name=${guide.name}&age=${guide.age}&email=${guide.email}&phoneno=${guide.phoneno}&language=${guide.language}&duration=${guide.duration}&price=${guide.price}&description=${guide.description}">
			
				<button class="glow-button">Update</button>
			</a>
			
			<form action="deleteGuide" method="post">
			<input type="hidden" name="tid" value="${guide.tid}" />
				<button class="glow-button secondary">Delete</button>
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