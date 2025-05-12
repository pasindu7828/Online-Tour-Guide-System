<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<style>

/* CSS Reset for consistent styling across browsers */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background: url('images/Sigiriya_rock.jpg') no-repeat center center/cover; /* Background image */
    font-family: 'Arial', sans-serif;
}

.login-container {
    width: 350px;
    padding: 40px;
    background: rgba(255, 255, 255, 0.1); /* Light transparent background for the form */
    border-radius: 15px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); /* Subtle shadow for better design */
}

.login-form {
    display: flex;
    flex-direction: column;
    gap: 20px; /* Space between inputs */
}

.login-input {
    padding: 15px;
    border: 1px solid rgba(255, 255, 255, 0.5); /* Transparent border */
    border-radius: 10px;
    background: rgba(255, 255, 255, 0.2); /* Transparent input background */
    color: white;
    font-size: 16px;
    outline: none;
}

.login-input::placeholder {
    color: rgba(255, 255, 255, 0.7); /* Placeholder text in white with transparency */
}

.login-button {
    padding: 15px;
    border: 1px solid rgba(355, 355, 355, 0.5); /* Transparent border */
    border-radius: 10px;
    background: rgba(355, 355, 355, 0.2); /* Transparent button background */
    color: white;
    font-size: 18px;
    cursor: pointer;
    transition: background 0.3s ease;
}

.login-button:hover {
    background: rgba(255, 255, 255, 0.4); /* Slightly opaque on hover */
}

.register-button {
    background: rgba(255, 255, 255, 0.3); /* Slightly more opaque */
}

.register-button:hover {
    background: rgba(255, 255, 255, 0.6); /* More opaque on hover */
}



</style>
</head>
<body>

<div class="login-container">
    <form action="adminLoginServlet" method="post" class="login-form">
        <input type="text" placeholder="Email" name="gmail" class="login-input" required>
        <input type="password" placeholder="Password" name="password" class="login-input" required>
        <button type="submit" value="submit" class="login-button">Sign In</button>
        <button 
            type="button" 
            class="login-button register-button" 
            onclick="window.location.href='Adminregistration.jsp'">
            Register
        </button>
    </form>
</div>


</body>
</html>