<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update the form</title>
<p><b>Update the required information here</b><p>

<style>

p {
    text-align: center;
    font-weight: bold;
    margin: 20px 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #e0f7fa;
    margin: 0;
    padding: 20px;
    color: #333;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    max-width: 500px;
    margin: 0 auto;
}

input[type="text"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"] {
    background-color: #00796b;
    color: white;
    padding: 12px 20px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    font-size: 16px;
}

input[type="submit"]:hover {
    background-color: #004d40;
}

br {
    margin-bottom: 10px;
}
</style>

<script>
function validateUpdateForm() {
    var name = document.forms[0]["Name"].value;
    var email = document.forms[0]["email"].value;
    var date = document.forms[0]["date"].value;
    var destination = document.forms[0]["Destination"].value;
    var pickup = document.forms[0]["PickLocation"].value;
    var dropoff = document.forms[0]["DropLocation"].value;
    var vehicle = document.forms[0]["Vehicle"].value;
    var passengers = document.forms[0]["NoOfPassengers"].value;

    if (name == "") {
        alert("Please enter the name.");
        return false;
    }
    if (email == "" || !/\S+@\S+\.\S+/.test(email)) {
        alert("Please enter a valid email address.");
        return false;
    }
    if (date == "") {
        alert("Please enter the date.");
        return false;
    }
    if (destination == "") {
        alert("Please enter the destination.");
        return false;
    }
    if (pickup == "") {
        alert("Please enter the pick-up location.");
        return false;
    }
    if (dropoff == "") {
        alert("Please enter the drop-off location.");
        return false;
    }
    if (vehicle == "") {
        alert("Please enter the vehicle type.");
        return false;
    }
    if (isNaN(passengers) || passengers < 1 || passengers > 50) {
        alert("Please enter a valid number of passengers (1-50).");
        return false;
    }
    return true;
}
</script>


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

<form action ="UpdateTransServlet" method ="post" >

	Request ID  <input type = "text" name ="requestID" value="<%= requestID %>"readonly><br>
	Name <input type = "text" name ="Name" value="<%= Name %>"><br>
	Email<input type = "text" name ="email" value="<%= email %>"><br>
	Date <input type = "text" name ="date" value="<%= date %>"><br>
    Destination <input type = "text" name ="Destination" value="<%= Destination %>"><br>
	PickUp Location <input type = "text" name ="PickLocation" value="<%= PickLocation %>"><br>
	DropOff Location <input type = "text" name ="DropLocation" value="<%= DropLocation %>"><br>
    Vehicle <input type = "text" name ="Vehicle" value="<%= Vehicle %>"><br>
    Number of passengers <input type = "text" name ="NoOfPassengers" value="<%= NoOfPassengers %>"><br>
	<input type = "submit" name ="submit" value="Updatedata"><br>


 </form>


</body>
</html>