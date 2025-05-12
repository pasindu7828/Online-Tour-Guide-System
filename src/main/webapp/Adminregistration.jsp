<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
<style>

/* Reset some default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Arial', sans-serif;
}

/* Set background image for the page */
body {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: url('images/639841-1920x1080-desktop-1080p-sri-lanka-wallpaper-photo.jpg') no-repeat center center/cover;
}

/* Center the form container */
.registration-container {
    background-color: rgba(255, 255, 255, 0.1); /* Light transparent background */
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3); /* Subtle shadow for depth */
    backdrop-filter: blur(10px); /* Glassmorphism effect */
    width: 300px;
}

/* Styling the form elements */
.registration-form input {
    width: 100%;
    margin: 8px 0;
    padding: 10px;
    border: none;
    outline: none;
    border-radius: 5px;
    background-color: rgba(255, 255, 255, 0.2);
    color: white;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

/* Add hover effect to inputs */
.registration-form input:focus {
    background-color: rgba(255, 255, 255, 0.5);
}

/* Styling the register button */
.registration-form button {
    width: 100%;
    padding: 10px;
    border: none;
    border: 2px solid rgba(255, 255, 255, 0.6); /* Transparent button border */
    background-color: transparent; /* Transparent background */
    color: white;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
}

.registration-form button:hover {
    background-color: rgba(255, 255, 255, 0.2);
    color: black;
}


</style>
</head>
<body>

 <div class="registration-container">
        <form name="registrationForm" action="admininsertServlet" method="post" class="registration-form" onsubmit="return validateForm()">
            <input type="text" placeholder="Username" name="name" required>
            <input type="email" placeholder="Email" name="gmail" required>
            <input type="password" placeholder="Password" name="password" required>
            <input type="tel" placeholder="Mobile Number" name="phone" required>
            <button type="submit" value="submit">Register</button>
        </form>
    </div>

<script>
    function validateForm() {
        const phone = document.forms["registrationForm"]["phone"].value;
        const email = document.forms["registrationForm"]["gmail"].value;
        const password = document.forms["registrationForm"]["password"].value;

        // Validate phone number (10 digits)
        const phonePattern = /^\d{10}$/;
        if (!phonePattern.test(phone)) {
            alert("Phone number must be exactly 10 digits.");
            return false;
        }

        // Validate email format
        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Validate password (at least 6 characters)
        if (password.length < 6) {
            alert("Password must be at least 6 characters long.");
            return false;
        }

        return true;  // Form is valid, allow submission
    }
</script>

</body>
</html>