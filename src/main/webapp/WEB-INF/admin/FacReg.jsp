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
        <link rel="stylesheet" href="../css/FacReg.css">
        
        <title>Faculty Registration</title>
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
        <!---->
        <!--========== REGISTRATION ==========-->
        <main>
            
            <div class="container">
                <div class="title">Sign Up - Faculty</div>
                    <div class="content">
                        <form action="../admin/FacultyRegistration" method="POST">
                            <div class="user-details" id="form">

                                <!--========== TEXTBOX INPUT ==========-->
                                <div class="input-box">
                                    <span class="details"><strong>Full Name</strong></span>
                                    <input type="text" placeholder="Enter Full Name" id="fullname" name="fullname" required=""
                                    pattern="([a-zA-Z0-9]+|[a-zA-Z0-9]+\s{1}[a-zA-Z0-9]{1,}|[a-zA-Z0-9]+\s{1}[a-zA-Z0-9]{3,}\s{1}[a-zA-Z0-9]{1,})"
                                    oninvalid="this.setCustomValidity('Enter a valid username: Atmost 3 Words')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Faculty ID</strong></span>
                                    <input type="text" placeholder="Enter Faculty ID" id="username" name="username" required=""
                                    pattern="([C][B]\.[E][N]\.[0-9][0-9][0-9][0-9])"
                                    oninvalid="this.setCustomValidity('Enter a valid faculty ID')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Email</strong></span>
                                    <input type="email" placeholder="Enter Email ID" id="email" name="email" required=""
                                    oninvalid="this.setCustomValidity('Enter a valid email ID')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Phone Number</strong></span>
                                    <input type="tel" placeholder="Enter number" id="phoneno" name="phoneno" required=""
                                    pattern="[6-9]{1}[0-9]{9}"
                                    oninvalid="this.setCustomValidity('Enter a valid Indian Phone Number')" oninput="setCustomValidity('')">
                                    
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Password</strong></span>
                                    <input type="password" placeholder="Enter Password" id="pass1" name="pass1" required=""
                                    pattern="(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}"
                                    oninvalid="this.setCustomValidity('8 Chars: 1 special, 2 numbers, 3 lowercase, 2 uppercase letters required')" oninput="setCustomValidity('')">
                                    
                                </div>
                                

                                <!--========== DROPDOWN SELECTION ==========-->
                                <div class="input-box">
                                    <span class="details"><strong>Department</strong></span>
                                    <select name="dept" id= "dpt" required>
                                        <option value="CSE">CSE</option>
                                        <option value="ECE">ECE</option>
                                        <option value="MEC">MEC</option>
                                        <option value="EEE">EEE</option>
                                        <option value="CHE">CHE</option>
                                        <option value="AER">AER</option>
                                    </select>
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Year</strong></span>
                                    <select name="year" id= "yr" required>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select>
                                </div>
                                <div class="input-box">
                                    <span class="details"><strong>Section</strong></span>
                                    <select name="section" id= "sec" required>
                                        <option value="A">A</option>
                                        <option value="B">B</option>
                                        <option value="C">C</option>
                                        <option value="D">D</option>
                                        <option value="E">E</option>
                                    </select>
                                </div>
                            </div>
                            <!--========== END ==========-->

                            <!--========== GENDER RADIO BUTTONS ==========-->
                            <div class="gender-details">
                                <input type="radio" name="gender" id="dot-1" value="Male" required>
                                <input type="radio" name="gender" id="dot-2" value="Female" required>
                                <input type="radio" name="gender" id="dot-3" value="Other" required>
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
                                <small id="messages">Error Message</small>
                            <!--========== END ==========-->    

                            <!--========== SUBMIT BUTTON ==========-->
                            </div>
                            <div class="button" id="btn">
                                <input type="submit" value="Register">
                            </div>
                            <!--========== END ==========--> 
                        </form>
                    </div>
            </div>
        </main>
        <!--========== DASHBOARD JS ==========-->
        <script src="../js/Dashboard.js"></script>
    </body>
</html>