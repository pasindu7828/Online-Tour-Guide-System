<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Details</title>
<style>
        /* Reset some default styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif; /* Modern font */
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: url('images/sri-lanka-beaches-hiriketiya.jpg'); /* Replace with your image */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
}

/* Center container for buttons */
.container {
    display: flex;
    gap: 40px;
}

/* Extra transparent button styling */
.transparent-button {
    background-color: rgba(255, 255, 255, 0.1); /* Very transparent white */
    border: 2px solid rgba(255, 255, 255, 0.4); /* Light border */
    color: white;
    padding: 15px 40px;
    font-size: 18px;
    font-weight: 600;
    border-radius: 30px; /* Smooth rounded corners */
    cursor: pointer;
    transition: all 0.4s ease;
    box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    backdrop-filter: blur(5px); /* Adds a glass effect */
    text-transform: uppercase; /* Capitalize text for a modern look */
}

.transparent-button:hover {
    background-color: rgba(255, 255, 255, 0.2); /* Slightly less transparent on hover */
    border-color: rgba(255, 255, 255, 0.6);
    transform: translateY(-5px); /* Lift on hover */
    box-shadow: 0px 15px 20px rgba(0, 0, 0, 0.2); /* Stronger shadow */
}

.transparent-button:active {
    transform: translateY(0); /* Reset lift on click */
    box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
}

    </style>
</head>
<body>
<div class="container">
		<button onclick="window.location.href='AllBookings'" class="transparent-button">View Bookings Details</button>
        
    </div>
</body>
</html>