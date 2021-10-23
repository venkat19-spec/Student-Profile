<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
%>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--========== BOX ICONS ==========-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--========== CSS ==========-->
        <link rel="stylesheet" href="../css/Dashboard.css">

        <title>Administrator Dashboard</title>
    </head>
    <body>
        <!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
                <img src="../img/Person.jpg" alt="" class="header__img">

                <a href="#" class="header__logo"></a>
    
                <div class="header__toggle">
                    <i class='bx bx-menu' id="header-toggle"></i>
                </div>
            </div>
        </header>

        <!--========== NAV ==========-->
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="#" class="nav__link nav__logo">
                        <i class='bx bxs-disc nav__icon' ></i>
                        <span class="nav__logo-name">Dashboard</span>
                    </a>
    
                    <div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Enroll</h3>
    
                            <a href="../admin/AdminDashboard" class="nav__link active">
                                <i class='bx bx-home nav__icon' ></i>
                                <span class="nav__name">Home</span>
                            </a>
                            
                            <a href="../admin/Notifications" class="nav__link active">
                                <i class='bx bx-message-square-detail nav__icon' ></i>
                                <span class="nav__name">Notifications</span>
                            </a>
                            
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-user nav__icon' ></i>
                                    <span class="nav__name">Sign Up</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="../admin/StudentRegistration" class="nav__dropdown-item"> Student</a>
                                        <a href="../admin/FacultyRegistration" class="nav__dropdown-item"> Faculty</a>
                                        <a href="../admin/WardenRegistration" class="nav__dropdown-item"> Warden</a>
                                    </div>
                                </div>
                            </div>

                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Personal Details</h3>
    
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bxs-alarm-add nav__icon' ></i>
                                    <span class="nav__name">Update</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>

                                <div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="#" class="nav__dropdown-item">Student</a>
                                        <a href="#" class="nav__dropdown-item">Faculty</a>
                                        <a href="#" class="nav__dropdown-item">Warden</a>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
				<form action="../admin/Logout" method="POST">
                	<button class="nav__link nav__logout">
                    	<i class='bx bx-log-out nav__icon' ></i>
                    	<span class="nav__name">Log Out</span>
                	</button>
                	
            	</form>
                
            </nav>
        </div>

        <!--========== CONTENTS ==========-->
        <main>
                <h1 >Welcome Admin!! Have a Great Day!! </h1>
	            <h2 >UPCOMING EVENTS @ ASE</h2>
	            <div class="slideshow-container">
	                <!-- Full-width images with number and caption text -->
	                <div class="mySlides fade">
	                    <div class="numbertext">1 / 3</div>
	                    <img src="../img/hackathon_new.jpg" style="width:500px; height:500px;">
	                    <div class="text">HACKATHON - 25TH JAN</div>
	                </div>
	                
	                <div class="mySlides fade">
	                    <div class="numbertext">2 / 3</div>
	                    <img src="../img/anokha_new.jpg" style="width:500px; height:500px;">
	                    <div class="text">ANOKHA - 12, 13, 14TH FEB</div>
	                </div>
	                
	                <div class="mySlides fade">
	                    <div class="numbertext">3 / 3</div>
	                    <img src="../img/capture_the_flag.jpg" style="width:500px; height:500px;">
	                    
	                </div>
	                
	                <!-- Next and previous buttons -->
	                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
	                <a class="next" onclick="plusSlides(1)">&#10095;</a>
	                </div>
	                <br>
	                
	                <!-- The dots/circles -->
	                <div style="text-align:center; margin: -40px 0px 0px 0px;">
	                <span class="dot" onclick="currentSlide(1)"></span>
	                <span class="dot" onclick="currentSlide(2)"></span>
	                <span class="dot" onclick="currentSlide(3)"></span>
	                </div>
                
			
        </main>

        <!--========== JAVASCRIPT ==========-->
        <script src="../js/Dashboard.js"></script>
        <script src="../js/slide.js"></script>
        
    </body>
</html>