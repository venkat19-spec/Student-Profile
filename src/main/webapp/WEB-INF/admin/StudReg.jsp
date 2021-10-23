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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--========== CSS ==========-->
        <link rel="stylesheet" href="../css/StudReg.css">
        
        <title>Student Registration</title>
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
                                        <a href="../admin/StudentRegistration" class="nav__dropdown-item">Student</a>
                                        <a href="../admin/FacultyRegistration" class="nav__dropdown-item">Faculty</a>
                                        <a href="../admin/WardenRegistration" class="nav__dropdown-item">Warden</a>
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

        <!--========== REGISTRATION ==========-->
    
        <main>
            
            <div class="container">
                <div class="title">Sign Up - Student</div>
                    <div class="content">
                        <form action="../admin/StudentRegistration" method="POST">
                            <div class="user-details" id="form">

                                <div class="input-box">
                                    <span class="details"><strong>Full Name</strong></span>
                                    <input type="text" placeholder="Enter Full Name" name="fullname" id="fullname" required="" 
                                    pattern="([a-zA-Z0-9]+|[a-zA-Z0-9]+\s{1}[a-zA-Z0-9]{1,}|[a-zA-Z0-9]+\s{1}[a-zA-Z0-9]{3,}\s{1}[a-zA-Z0-9]{1,})"
                                    oninvalid="this.setCustomValidity('Enter a valid username: Atmost 3 Words')" oninput="setCustomValidity('')"
                                   	>
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Student ID</strong></span>
                                    <input type="text" placeholder="Enter Student ID" name="username" id="username" required=""
                                    pattern="[C][B]\.[E][N]\.[U][4](CSE|EEE|MEC|ECE|CHE|AER)1[0-9][0-9][0-9][0-9]"
                                    oninvalid="this.setCustomValidity('Enter a valid student ID')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Email</strong></span>
                                    <input type="email" placeholder="Enter Email ID" name="email" id="email" required=""
                                    oninvalid="this.setCustomValidity('Enter a valid email ID')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Phone Number</strong></span>
                                    <input type="tel" placeholder="Enter number" name="phoneno" required id="phoneno" required=""
                                    pattern="[6-9]{1}[0-9]{9}"
                                    oninvalid="this.setCustomValidity('Enter a valid Indian Phone Number')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Password</strong></span>
                                    <input type="password" placeholder="Enter Password" name="pass1" id="pass1" required 
                                    pattern="(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}"
                                    oninvalid="this.setCustomValidity('8 Chars: 1 special, 2 numbers, 3 lowercase, 2 uppercase letters required')" oninput="setCustomValidity('')"> 
                                    
                                </div>
                                

                            </div>

                            <div class="gender-details">
                                <input type="radio" name="gender" id="dot-1" value="Male" required>
                                <input type="radio" name="gender" id="dot-2" value="Female">
                                <input type="radio" name="gender" id="dot-3" value="Other">
                                <span class="gender-title">Gender</span>
                                <div class="category">
                                    <label for="dot-1">
                                        <span class="dot one"></span>
                                        <span class="gender">Male</span>
                                     </label>
                                    <label for="dot-2">
                                        <span class="dot two"></span>
                                        <span class="gender">Female</span>
                                    </label>
                                    <label for="dot-3">
                                        <span class="dot three"></span>
                                        <span class="gender">Other</span>
                                    </label>
                                </div>
                                <small id="messages">Error Message </small>
                                
                            </div>
                            <div class="button" id="btn">
                                <input type="submit" value="Register">
                                
                            </div>
                        </form>
                    </div>
            </div>
        </main>
        <!--========== DASHBOARD JS ==========-->
        <script src="../js/Dashboard.js" defer></script>
    </body>
</html>