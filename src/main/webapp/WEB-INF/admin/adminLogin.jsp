<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <link rel="stylesheet" type="text/css" href="../css/Login.css">

        <script src="https://kit.fontawesome.com/a81368914c.js"></script>

        <title>Administrator Login</title>
    </head>

    <body>
        <img class="wave" src="../img/wave.png">
        <div class="container">

            <div class="img">
                <img src="../img/personalization.svg">
            </div>

            <div class="login-container">

                <form action="../admin/LoginAdmin" method="POST">

                    <img class="avatar" src="../img/admin.svg">
                    <h2>WELCOME</h2>
                    <div class="input-div one focus">
                        <div class="i">
                            <i class="fas fa-user">
                            </i>
                        </div>
                        <div>
                            <h5>User Name</h5>
                            <input class="input" type="text" name="username" required>
                        </div>
                    </div>
                    <div class="input-div two">
                        <div class="i">
                            <i class="fas fa-lock">
                            </i>
                        </div>
                        <div>
                            <h5>Password</h5>
                            <input class="input" type="password" name="password" required>
                        </div>
                    </div>
                    <a href="#">Forgot Password?</a>
                    <input type="submit" class="btn" value="Login">
                    <label style="font-size: 18px; color: red;"><strong>
		           	${error}
		           	</strong></label>
		           	<label style="font-size: 18px; color: green;"><strong>
		           	${logout_msg}
		           	</strong></label>

                </form>
             
            </div>

        </div>
        <!--========== LOGIN JS ==========-->
        <script type="text/javascript" src="../js/Login.js"></script>

    </body>
</html>