<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

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
    background: url('images/sri-lanka-beira-lake-sunset-40jm7om1c6y9twut.jpg') no-repeat center center/cover; /* Background image */
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

/*-----------------------Navbar-----------------------*/
.navbar {
    position: fixed;
    top: 0;
    width: 100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    background: rgba(0, 0, 0, 0.5);
    z-index: 10;
    padding: 0 20px;
}
.navbar h2 {
    font-size: 22px;
    color: white;
    padding: 15px 20px;
    margin-left: 90px;
}
.nav-links {
    display: flex;
    margin-right: 90px;
}
.nav-link {
    font-weight: 400;
    padding: 15px 20px;
    color: white;
    text-decoration: none;
    transition: all 0.3s ease;
}
.nav-link:hover {
    text-decoration: underline;
}

/*-----------------------Footer-----------------------*/
.bend1{
    padding: 0;
    margin-bottom: -60px;
    margin-left: -30px;
}
.bend2{
    padding: 0;
    margin-bottom: -306px;
    margin-left: 647px;
}
.footer {
    background-color: #000000;
    color: #ffffff;
    padding-right: 200px;
    padding-left: 50px;
    padding-top: 40px;
    padding-bottom: 30px;
    display: flex;
}
.footer-logo {
    display: grid;
    flex: 1;
    min-width: 200px;
    margin: 20px 0;
}
.footer-logo h1 {
    font-size: 24px;
}
.footer-logo p {
    margin: 10px 0 20px;
    max-width: 200px;
}
.footer-socials {
    display: flex;
    gap: 10px;
}
.footer-socials a {
    color: #ffffff;
    text-decoration: none;
    font-size: 24px;
}
.footer-columns {
    flex: 1;
    width: 0px;
    margin-top: 20px;
    margin-bottom: 20px;
    text-align: center;
}
.footer-columns h3 {
    margin-bottom: 20px;
}
.footer-columns ul {
    list-style: none;
    padding: 0;
}
.footer-columns ul li {
    margin: 10px 0;
}
.footer-columns ul li a {
    color: #ffffff;
    text-decoration: none;
}


.footer-column {
    flex: 1;
    min-width: 200px;
    margin: 20px 0;
}
.footer-column h3 {
    margin-bottom: 20px;
}
.footer-column ul {
    list-style: none;
    padding: 0;
}
.footer-column ul li {
    margin: 10px 0;
}
.footer-column ul li a {
    color: #ffffff;
    text-decoration: none;
}
.newsletter {
    display: flex;
    flex-direction: column;
}
.newsletter input {
    padding: 10px;
    margin-top: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 15px;
}
.newsletter button {
    padding: 10px;
    border: none;
    border-radius: 15px;
    background-color: #ffe927;
    color: black;
    cursor: pointer;
}
.newsletter button:hover {
    background-color: white;
    color: black;
}
.footer-bottom {
    text-align: center;
    padding: 20px;
    background-color: #000000;
    color: #ffffff;
    border-top: 1px solid #2c3e50;
}

</style>

</head>
<body>

<div class="navbar">
        <h2>Travel 2 Lanka</h2>
        <div class="nav-links">
            <a href="Homepage.jsp" class="nav-link">HOME</a>
            <a href="Gallery.jsp" class="nav-link">GALLERY</a>
            <a href="userLogin.jsp" class="nav-link">BOOK TOUR</a>
            <a href="Aboutus.jsp" class="nav-link">ABOUT US</a> 
            <a href="Explore.jsp" class="nav-link">EXPLORE</a>         
             <a href="userLogin.jsp" class="nav-link">LOGIN</a>
        </div>
    </div>

<div class="login-container">
    <form action="UserLoginServlet" method="post" class="login-form">
        <input type="text" placeholder="Email" name="email" class="login-input" required>
        <input type="password" placeholder="Password" name="password" class="login-input" required>
        <button type="submit" value="submit" class="login-button">Sign In</button>
        <button 
            type="button" 
            class="login-button register-button" 
            onclick="window.location.href='userRegistration.jsp'">
            Register
        </button>
    </form>
</div>

 
</body>
</html>