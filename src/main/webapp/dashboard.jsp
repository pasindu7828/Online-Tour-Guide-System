<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Tour Guide Dashboard</title>
    <link rel="stylesheet" href="CSS/d1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Roboto', sans-serif;
    background-color: #f0f2f5;
}

.dashboard {
    position: relative;
    background-image: url('images/railway-bridge.webp'); /* Use your uploaded image path */
    background-size: cover;
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    color: #fff;
}

.overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.5); /* Dark overlay for contrast */
    z-index: 1;
}

h1 {
    z-index: 2; /* Ensure heading is above the overlay */
    font-size: 2.5em;
    margin-bottom: 20px;
}

h1 span {
    color: #4fc3f7; /* Accent color for 'DASH BOARD' */
}

.button-container {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: center;
    z-index: 2; /* Ensure buttons are above the overlay */
    padding: 20px;
}

.button {
    background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent white */
    color: #fff;
    padding: 15px 30px;
    margin: 10px;
    text-align: center;
    text-decoration: none;
    border: 2px solid rgba(255, 255, 255, 0.8); /* Light border */
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
    transition: background-color 0.3s ease, transform 0.3s ease, color 0.3s ease;
    font-size: 1.2em; /* Increase font size for better visibility */
    width: 250px; /* Fixed width for buttons */
}

.button:hover {
    background-color: rgba(255, 255, 255, 0.5); /* More opaque on hover */
    color: #333; /* Darker text color on hover */
    transform: translateY(-3px); /* Lift effect on hover */
}

@media (max-width: 600px) {
    h1 {
        font-size: 2em; /* Responsive font size */
    }
    
    .button {
        width: 80%; /* Make buttons responsive on smaller screens */
    }
}

</style>
</head>
<body>

<div class="dashboard">
        <div class="overlay"></div>
        <h1>ONLINE TOUR GUIDE <span>DASH BOARD</span></h1>
        <div class="button-container">
            <a href="packageviewadmin.jsp" class="button">Package Details</a>
            <a href="paymentview.jsp" class="button">Payment Details</a>
            <a href="tourlistbutton.jsp" class="button">Tour Guide Details</a>
            <a href="adminviewbook.jsp" class="button">Booking Details</a>
            <a href="transportviewadmin.jsp" class="button">Transport Services</a>
            <a href="adminlogin.jsp" class="button">Log Out</a>
        </div>
    </div>
</body>
</html>