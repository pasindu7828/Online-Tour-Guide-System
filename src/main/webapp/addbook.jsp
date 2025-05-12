<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Book Tour</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    

    <link rel="stylesheet" href="CSS/booking.css">

    <!-- Bootstrap Link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Bootstrap Link -->


    <!-- Font Awesome Cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Font Awesome Cdn -->


    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!-- Google Fonts -->


<script>
  function validateForm() {
    const name = document.forms["bookingForm"]["name"].value;
    const email = document.forms["bookingForm"]["email"].value;
    const mobile = document.forms["bookingForm"]["mobile"].value;
    const nic = document.forms["bookingForm"]["nic"].value;
    const days = document.forms["bookingForm"]["days"].value;

    const namePattern = /^[A-Za-z\s]+$/;
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    const mobilePattern = /^\d{10}$/;
    const nicPattern = /^\d{10}$/;

    if (!namePattern.test(name)) {
      alert("Full Name must contain only letters.");
      return false;
    }

    if (!emailPattern.test(email)) {
      alert("Please enter a valid email address.");
      return false;
    }

    if (!mobilePattern.test(mobile)) {
      alert("Mobile number must be exactly 10 digits.");
      return false;
    }

    if (!nicPattern.test(nic)) {
      alert("ID Number (NIC) must be exactly 10 digits.");
      return false;
    }

    if (isNaN(days) || days <= 0) {
      alert("Days should be a positive integer.");
      return false;
    }

    return true;
  }
</script>

</head>
<body>

<div class="navbar">
      <h2>Travel 2 Lanka</h2>
      <div class="nav-links">
          <a href="Homepage.jsp" class="nav-link">HOME</a>
          <a href="Gallery.jsp" class="nav-link">GALLERY</a>
          <a href="addbook.jsp" class="nav-link">BOOK TOUR</a>
          <a href="Aboutus.jsp" class="nav-link">ABOUT US</a>
          <a href="Explore.jsp" class="nav-link">EXPLORE</a>
          <a href="userLogin.jsp" class="nav-link">LOGIN</a>
      </div>
  </div>


<div class="home" style="background-image: linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.2)), url('images/605b5fb7ff14b82bc8d41e28_Sri Lanka travel guide (1).jpg'); width: 100%; height: 90vh; background-repeat: no-repeat; background-size: cover;"></div>


  

    <!-- Section Packages Start -->
    <section class="packages" id="packages">
      <div class="container">
        
        <div class="main-txt">
          <h1><span>P</span>ackages</h1>
        </div>

        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/Kandy.jpg" alt="">
              <div class="card-body">
                <h3>Kandy</h3>
                <p>Come to visit Sri Lanka and get an unforgettable experience with us..!!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
                <h6>Price: <strong>$500</strong></h6>
                <a href="#book">Book Now</a>
                <a href="insert.jsp">Payment</a>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/Anura.jpg" alt="">
              <div class="card-body">
                <h3>Anuradhapura</h3>
                <p>Come to visit Sri Lanka and get an unforgettable experience with us..!!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
                <h6>Price: <strong>$400</strong></h6>
                <a href="#book">Book Now</a>
                <a href="insert.jsp">Payment</a>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/nuwara.webp" alt="">
              <div class="card-body">
                <h3>Nuwara Eliya</h3>
                <p>Come to visit Sri Lanka and get an unforgettable experience with us..!!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
                <h6>Price: <strong>$600</strong></h6>
                <a href="#book">Book Now</a>
                <a href="insert.jsp">Payment</a>
              </div>
            </div>

          </div>



        </div>



        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/hik.webp" alt="">
              <div class="card-body">
                <h3>Hikkaduwa</h3>
                <p>Come to visit Sri Lanka and get an unforgettable experience with us..!!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
                <h6>Price: <strong>$550</strong></h6>
                <a href="#book">Book Now</a>
                <a href="insert.jsp">Payment</a>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/Gll.jpg" alt="">
              <div class="card-body">
                <h3>Galle</h3>
                <p>Come to visit Sri Lanka and get an unforgettable experience with us..!!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
                <h6>Price: <strong>$250</strong></h6>
                <a href="#book">Book Now</a>
                <a href="insert.jsp">Payment</a>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <img src="./images/yala.jpg" alt="">
              <div class="card-body">
                <h3>Yala National Park</h3>
                <p>Come to visit Sri Lanka and get an unforgettable experience with us..!!</p>
                <div class="star">
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star checked"></i>
                  <i class="fa-solid fa-star "></i>
                  <i class="fa-solid fa-star "></i>
                </div>
                <h6>Price: <strong>$400</strong></h6>
                <a href="#book">Book Now</a>
                <a href="insert.jsp">Payment</a>
              </div>
            </div>

          </div>



        </div>


      </div>
    </section>
    <!-- Section Packages End -->


  <!-- Section Book Start -->
    <section class="book" id="book">
      <div class="container">

        <div class="main-text">
          <h1><span>B</span>ook</h1>
        </div>
        
        <div class="row">

          <div class="col-md-6 py-3 py-md-0">
            <div class="card">
              <img src="./images/gu.jpg" alt="">
            </div>
          </div>

          <div class="col-md-6 py-3 py-md-0">
            <form name="bookingForm" action="CreateServlet" method="post" onsubmit="return validateForm()">

              <input type="text" class="form-control" placeholder="Full Name" name="name" required><br>
              <input type="text" class="form-control" placeholder="Email" name="email" required><br>
              <input type="text" class="form-control" placeholder="Mobile Number" name="mobile" required><br>
              <input type="text" class="form-control" placeholder="ID Number" name="nic" required><br>
              <input type="text" class="form-control" placeholder="How many days" name="days" required><br>
              <input type="text" class="form-control" placeholder="Location" name="location" required><br>
              <input type="text" class="form-control" placeholder="How many members" name="members" required><br>
              <input type="text" class="form-control" placeholder="Transport Mode" name="vehicle" required><br>
              <input type="date" class="form-control" placeholder="Arrivals" name="from" required><br>
              <input type="date" class="form-control" placeholder="Arrivals" name="to" required><br>
              <input type="text" class="form-control" name="comments" placeholder="Type something here">
              <input type="submit" value="Book Now" class="submit" required>
              

            </form>
          </div>

        </div>
      </div>
    </section>
    <!-- Section Book End -->




    <!-- Section Services Start -->
    <section class="services" id="services">
      <div class="container">

        <div class="main-txt">
          <h1><span>S</span>ervices</h1>
        </div>

        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-hotel"></i>
              <div class="card-body">
                <h3>Affordable Hotel</h3>
                <p>With luxury Rooms</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-utensils"></i>
              <div class="card-body">
                <h3>Food & Drinks</h3>
                <p>Authentic Food and Bevarages</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-bullhorn"></i>
              <div class="card-body">
                <h3>Safty Guide</h3>
                <p>With Great Experience.</p>
              </div>
            </div>

          </div>
          
          
      </div>


        <div class="row" style="margin-top: 30px;">

          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-globe-asia"></i>
              <div class="card-body">
                <h3>All Over The Sri Lanka</h3>
                <p>Nature</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-plane"></i>
              <div class="card-body">
                <h3>Fastest Travel</h3>
                <p>Affordable travel pacakages</p>
              </div>
            </div>

          </div>
          <div class="col-md-4 py-3 py-md-0">

            <div class="card">
              <i class="fas fa-hiking"></i>
              <div class="card-body">
                <h3>Adventures</h3>
                <p>Hiking with adventures experience.</p>
              </div>
            </div>

          </div>



        </div>

      </div>
    </section>
    
    
    
  <section class="packages" id="packages">
      <div class="container">
        
        <div class="main-txt">
          <h1><span>T</span>rasports</h1>
        </div>

        <div class="row" style=" center: 30px;">
       
       
  <div class="col-md-4 py-3 py-md-0">
    <div class="card">
      <img src="./images/Tra.jpg" alt="Transport Services">
      <div class="card-body">
        <h3>Transport Services</h3>
        <p>Enjoy convenient and reliable transport for your travels with us!</p>
        <div class="star">
          <i class="fa-solid fa-star checked"></i>
          <i class="fa-solid fa-star checked"></i>
          <i class="fa-solid fa-star checked"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
        </div>
        <h6>Price: <strong>$100</strong></h6>
        <a href="Transportinsert.jsp" class="btn-transport">Book Transport</a>
      </div>
    </div>
  </div>
</section>


    
    
  
    
   
  
    <!-- Footer Start -->
    <footer id="footer">
      <h1><span>T</span>ravel 2 Lanka</h1>
      <p>.</p>
      <div class="social-links">
        <i class="fa-brands fa-twitter"></i>
        <i class="fa-brands fa-facebook"></i>
        <i class="fa-brands fa-instagram"></i>
        <i class="fa-brands fa-youtube"></i>
        <i class="fa-brands fa-pinterest-p"></i>
      </div>
      <div class="credit">
        <p>Designed By <a href="#">SLIIT</a></p>
      </div>
      <div class="copyright">
        <p>&copy;© 2024 All Rights Reserved by SLIIT Group No 4.</p>
      </div>
    </footer>
    <!-- Footer End -->







    


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>