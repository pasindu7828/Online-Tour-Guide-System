<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transport request form</title>
  <h1>Transport Request Form</h1>
            <h2>Book Your Transport for a Hassle-Free Tour</h2>
<style>

h1, h2 {
    text-align: center;
    color: white;
}

h1 {
    font-size: 36px;
    margin-bottom: 10px;
}

h2 {
    font-size: 24px;
    margin-bottom: 20px;
}

body {
   background-image :url('images/map.jpg');
   background-size:cover;
   background-repeat:no-repeat;
   background-position:centre;
   height:100vh;
   margin:0;
}

form {
    background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent white for the form */
    padding: 20px;
    border-radius: 10px;
    max-width: 400px;
    margin: 50px auto;
    font-family: Arial, sans-serif;
}

label {
    display: block;
    font-size: 14px;
    margin-bottom: 5px;
    color: #333;
}

input, select {
    width: 100%;
    padding: 8px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    background-color: #0080ff;
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

button:hover {
    background-color: #45a049;
}


</style>

<script>

function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var date = document.getElementById("date").value;
    var destination = document.getElementById("destination").value;
    var pickup = document.getElementById("pickup").value;
    var dropoff = document.getElementById("dropoff").value;
    var passengers = document.getElementById("passengers").value;
    
    if (name == "") {
        alert("Please enter your full name.");
        return false;
    }
    if (email == "") {
        alert("Please enter your email.");
        return false;
    }
    if (date == "") {
        alert("Please select a tour date.");
        return false;
    }
    if (destination == "") {
        alert("Please enter your destination.");
        return false;
    }
    if (pickup == "") {
        alert("Please enter your pick-up location.");
        return false;
    }
    if (dropoff == "") {
        alert("Please enter your drop-off location.");
        return false;
    }
    if (passengers < 1 || passengers > 50) {
        alert("Please enter a valid number of passengers (1-50).");
        return false;
    }
    
    return true; // All validations passed
}
</script>

</head>
<body>

<form action="Transportinsert" method="POST">

                <label for="name">Full Name:</label>
                <input type="text" id="name" name="Name" required> <br> <br>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required> <br> <br>

                <label for="date">Tour Date:</label>
                <input type="date" id="date" name="date" required> <br> <br>

                <label for="destination">Destination:</label>
                <input type="text" id="destination" name="Destination" required> <br> <br>

                <label for="pickup">Pick-up Location:</label>
                <input type="text" id="pickup" name="PickLocation" required> <br> <br>

                <label for="dropoff">Drop-off Location:</label>
                <input type="text" id="dropoff" name="DropLocation" required> <br> <br> 

                <label for="transportType">Preferred Transport Type:</label>
                <select id="transportType" name="transportType">
                    <option value="car">Car</option>
                    <option value="van">Van</option>
                    <option value="bus">Bus</option>
                </select> <br> <br>

                <label for="passengers">Number of Passengers:</label>
                <input type="number" id="passengers" name="NoOfPassengers" min="1" max="50" required> <br> <br>

              	<button onclick="createRequest()">Create New Request</button> <br><br>
			   

                
            </form>



</body>
</html>