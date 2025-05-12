<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel 2 Lanka</title>
    <link rel="stylesheet" href="CSS/Home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Travel2Lanka</title>
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

    <div class="video-container">
        <video class="background-video" autoplay loop muted>
            <source src="images/videoplayback.webm" type="video/mp4">
        </video>
        <video class="background-video" autoplay loop muted>
            <source src="images/second.mp4" type="video/mp4">
        </video>
        <video class="background-video" autoplay loop muted>
            <source src="images/third.mp4" type="video/mp4">
        </video>
        <div class="content">
            <h1 id="title">WELCOME TO<br>SRI LANKA TRAVEL GUIDE</h1>
            <p id="description">Discover the enchanting beauty and rich heritage of Sri Lanka.
                From pristine beaches and lush rainforests to ancient temples and vibrant culture,
                embark on an unforgettable journey through the Pearl of the Indian Ocean.
                Let us guide you to the hidden gems and must-see destinations that make Sri Lanka a traveler's paradise
            </p>
            <a href="Aboutus.jsp"><button>Read More</button></a>
        </div>
    </div>

    <div class="circle-container">
        <div class="circle" onclick="changeVideo(0)"></div>
        <div class="circle" onclick="changeVideo(1)"></div>
        <div class="circle" onclick="changeVideo(2)"></div>
    </div>



    <div class="srilanka-about">
        <div class="lanka-details">
            <p>Sri Lanka is one of the most exotic getaways in the world. Surrounded by the azure Indian Ocean, this island paradise has contrasting landscapes, stretches of golden sandy beaches and a wealth of wildlife and culture to discover.<br><br></p>
            <p> A physical environment of wide-ranging diversity makes Sri Lanka one of the world’s most scenic countries. As the home of several ethnic groups, each with its own cultural heritage, Sri Lanka also has a highly varied cultural landscape.</p>
            
            <p class="details-srilanka"><b><br>Capital City:</b> Colombo<br>
                <br><b>Currency: </b> Sri Lankan Rupee LKR <br><br> <b>Population:</b> 21 Million
                <br><br> <b>Language: </b> Tamil, Sinhala, English
                <br><br> <b>Capital: </b> Sri Jayawardenapura Kotte</p>
        </div>
        <div class="lanka-iamge">
            <img src="images/large-detailed-travel-map-of-sri-lanka.jpg" alt="">
        </div>
    </div>




    <div class="popular">
        <h1>Popular places</h1>
        <div class="places">
            <a href="Explore.jsp" class="custom-link"><div class="place">
                <img src="images/Lotus-Tower-1-1.jpg" alt="Ella">
                <div class="place-details">
                    <h2>Colombo</h2>
                    <p>The bustling commercial capital of Sri Lanka, known for its nightlife and colonial architecture...</p>
                </div>
            </div>
            </a>
            <a href="Explore.jsp" class="custom-link"><div class="place">
                <img src="images/badulla.jpg" alt="Haputale">
                <div class="place-details">
                    <h2>Badulla</h2>
                    <p>Offers lush tea plantations, picturesque waterfalls, and scenic hiking trails...</p>
                </div>
            </div>
            </a>
            <a href="Explore.jsp" class="custom-link"><div class="place">
                <img src="images/jaffna.jpg" alt="Kandy">
                <div class="place-details">
                    <h2>Jaffna</h2>
                    <p>Rich in Tamil culture, Jaffna boasts historic temples and vibrant markets...</p>
                </div>
            </div>
            </a>
            <a href="Explore.jsp" class="custom-link"><div class="place">
                <img src="images/Dadagamuwa-Viharaya1.webp" alt="Jaffna">
                <div class="place-details">
                    <h2>Kegalle</h2>
                    <p>Home to the Pinnawala Elephant Orphanage and picturesque rubber plantations...</p>
                </div>
            </div>
            </a>
        </div>
        <a href="Explore.jsp"><button>Where to go</button></a>
    </div>






    <div class="gallery">
        <div class="gallery-box">
            <img src="images/Nuwara-Eliya.jpg" alt=""/>
        </div>
        <div class="galley-text">
            <h1>Experiance the real<br>Sri Lanka</h1>
            <h3>Browse our gallery to experience the real Sri Lanka</h3>
            <a href="Gallery.jsp"> <button>See More Images →</button></a>
        </div>
    </div>






    <footer>
        <img class="bend1" src="Assets/bend1.png" alt=""/>
        <img class="bend2" src="Assets/bend2.png" alt=""/>
        <div class="footer">
            <div class="footer-logo">
                <h1>Travel 2 Lanka</h1>
                <p>Your Ultimate Guide to discover the enchanting beauty and rich cultural heritage of Sri Lanka</p>
                <div class="footer-socials">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-telegram"></i></a>
                    <a href="#"><i class="fab fa-whatsapp"></i></a>
                </div>
            </div>
            <div class="footer-columns">
                <h3>Pages</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">Explore</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Newsletter</h3>
                <div class="newsletter">
                    <p>Keep me up to date with content, updates, and offers from me!!</p>
                    <input type="email" placeholder="Email Address">
                    <button>Submit</button>
                </div>
            </div>
            <div class="footer-column"></div>
            <div class="footer-column"></div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 Travel 2 Lanka - All Rights Reserved. SLIIT Group 4</p>
            <p><a href="#" style="color: #ffffff; text-decoration: none;">Privacy Travel Policy</a></p>
        </div>
    </footer>




    <script src="jsfiles/Home.js"></script>

</body>
</html>