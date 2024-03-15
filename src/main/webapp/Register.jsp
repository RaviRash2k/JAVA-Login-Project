<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>Register Page</title>

<style>
        body {
            background-image: url('./images/gta.jpg');
            background-size: cover;
        	background-repeat: no-repeat;
        }
        .register-form {
            width: 360px;
            margin: 50px auto;
            font-family: Arial, sans-serif;
        }
        .register-form form {
            background: rgba(255, 255, 255, 0.5);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .register-form h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-control {
            border-radius: 20px;
        }
        .register-btn {
            border-radius: 20px;
        }
        .login-link {
            text-align: center;
            margin-top: 15px;
        }
    </style>
    
</head>

<body>

    <div class="register-form">
    
        <form action="CusRegister" method="post">
        
            <h2 class="text-center">Register</h2>   
                
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" class="form-control" placeholder="Enter your name" required="required">
            </div>
            
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required="required">
            </div>
            
            <div class="form-group">
                <label for="mobile">Mobile</label>
                <input type="text" id="mobile" name="mobile" class="form-control" placeholder="Enter your mobile" required="required">
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required="required">
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block register-btn">Register</button>
            </div>
            
            <div class="login-link">
                Already have an account? <a href="Login.jsp">Login here</a>
            </div>     
               
        </form>
        
    </div>
    
</body>
</html>