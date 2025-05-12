<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/payment.css">
<meta charset="UTF-8">
<title>Payment</title>
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

<div class="container">

    <div class="card-container">

        <div class="front">
            <div class="image">
                <img src="images/" alt="">
                <img src="images/" alt="">
            </div>
            <div class="card-number-box">################</div>
            <div class="flexbox">
                <div class="box">
                    <span>card holder</span>
                    <div class="card-holder-name">full name</div>
                </div>
                <div class="box">
                    <span>expires</span>
                    <div class="expiration">
                        <span class="exp-month">mm</span>
                        <span class="exp-year">yy</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="back">
            <div class="stripe"></div>
            <div class="box">
                <span>cvv</span>
                <div class="cvv-box"></div>
                <img src="images/" alt="">
            </div>
        </div>

    </div>

    <form name="paymentForm" method="post"  action="insertServlet" onsubmit="return validateForm()">
        <div class="inputBox">
            <span>card number</span>
            <input type="text" name="cardno"  maxlength="16" class="card-number-input" required>
        </div>
        <div class="inputBox">
            <span>card holder</span>
            <input type="text" name="cardholder" class="card-holder-input" required>
        </div>
        
        <div class="flexbox">
            <div class="inputBox">
                <span>expiration mm</span>
                <select name="month" id="" class="month-input" required>
                
                    <option value="month" selected disabled>month</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
            </div>
            <div class="inputBox">
                <span>expiration yy</span>
                <select name="year" id="" class="year-input" required>
                    <option value="year" selected disabled>year</option>
                    <option value="2021">2021</option>
                    <option value="2022">2022</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <option value="2028">2028</option>
                    <option value="2029">2029</option>
                    <option value="2030">2030</option>
                </select>
            </div>
            <div class="inputBox">
                <span>cvv</span>
                <input type="text" name="cvv" maxlength="3" class="cvv-input" required>
            </div>
            
        </div>
        
        <div class="inputBox">
            <span>Full Name</span>
            <input type="text" class="card-holder-input"  name="fullname" required>
        </div>

        <div class="inputBox">
            <span>ID Number</span>
            <input type="text" class="card-holder-input"  name="nic" required>
        </div>

        <div class="inputBox">
            <span>Mobile Number</span>
            <input type="text" class="card-holder-input"  name="mobileno" required>
        </div>

        <div class="inputBox">
            <span>Email</span>
            <input type="text" class="card-holder-input"  name="email" required>
        </div>

        <div class="inputBox">
            <span>Address</span>
            <input type="text" class="card-holder-input"  name="address" required>
        </div>

        <div class="inputBox">
            <span>Postal Code</span>
            <input type="text" class="card-holder-input"  name="postalcode" required>
        </div>

        <div class="inputBox">
            <span>District</span>
            <input type="text" class="card-holder-input"  name="district" required>
        </div>

        <div class="inputBox">
            <span>Country</span>
            <input type="text" class="card-holder-input"  name="country" required>
        </div>


        <button type="submit" value="submit" class="submit-btn">Submit</button>
    </form>

</div>    
    
<script>
    function validateForm() {
        const cardholder = document.forms["paymentForm"]["cardholder"].value;
        const fullname = document.forms["paymentForm"]["fullname"].value;
        const nic = document.forms["paymentForm"]["nic"].value;
        const mobileno = document.forms["paymentForm"]["mobileno"].value;
        const emailInput = document.forms["paymentForm"]["email"].value;
        const postalcode = document.forms["paymentForm"]["postalcode"].value;
        const district = document.forms["paymentForm"]["district"].value;
        const country = document.forms["paymentForm"]["country"].value;

        const namePattern = /^[A-Za-z\s]+$/;
        const digitPattern = /^\d+$/;
        const emailPattern = /.+@.+\..+/;  // Basic email validation

        // Validate Card Holder and Full Name (letters and spaces only)
        if (!namePattern.test(cardholder)) {
            alert("Card Holder must contain only letters and spaces.");
            return false;
        }
        if (!namePattern.test(fullname)) {
            alert("Full Name must contain only letters and spaces.");
            return false;
        }

        // Validate ID Number (10 digits)
        if (!digitPattern.test(nic) || nic.length !== 10) {
            alert("ID Number must contain exactly 10 digits.");
            return false;
        }

        // Validate Mobile Number (10 digits)
        if (!digitPattern.test(mobileno) || mobileno.length !== 10) {
            alert("Mobile Number must contain exactly 10 digits.");
            return false;
        }

        // Basic Email Validation
        if (!emailPattern.test(emailInput)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Validate Postal Code (5 digits)
        if (!digitPattern.test(postalcode) || postalcode.length !== 5) {
            alert("Postal Code must contain exactly 5 digits.");
            return false;
        }

        // Validate District and Country (letters and spaces only)
        if (!namePattern.test(district)) {
            alert("District must contain only letters and spaces.");
            return false;
        }
        if (!namePattern.test(country)) {
            alert("Country must contain only letters and spaces.");
            return false;
        }

        return true;  // All validations passed
    }
</script>




</body>
</html>