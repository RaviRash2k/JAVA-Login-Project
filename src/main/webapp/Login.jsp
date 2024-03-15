<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
        body {
            background-image: url('./images/gta.jpg');
            background-size: cover;
        	background-repeat: no-repeat;
        }
        .login-form {
            width: 360px;
            margin: 50px auto;
            font-family: Arial, sans-serif;
        }
        .login-form form {
            background: rgba(255, 255, 255, 0.5);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .login-form h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-control {
            border-radius: 20px;
        }
        .login-btn {
            border-radius: 20px;
        }
        .forgot-password, .register-link {
            text-align: center;
            margin-top: 15px;
        }
    </style>
    
</head>

<body>

    <div class="login-form">
    
        <form action="CusLogin" method="post">
        
            <h2 class="text-center">Login</h2>   
                
            <div class="form-group">
                <input type="text" class="form-control" name="email" placeholder="Enter your email" required="required">
            </div>
            
            <div class="form-group">
                <input type="password" class="form-control" name="pass" placeholder="Enter your password" required="required">
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block login-btn">Login</button>
            </div>
            
            <div class="clearfix text-center">
                <a href="ForgetPass.jsp" class="forgot-password">Forgot Password?</a>
            </div><br>
            
            <div class="register-link">
                <p>Don't have an account? <a href="Register.jsp">Register here</a></p>
            </div>   
                 
        </form>
        
    </div>

</body>

</html>
