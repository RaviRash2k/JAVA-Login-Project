<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
        body {
            background-image: url('./images/gta.jpg');
            background-size: cover;
        	background-repeat: no-repeat;
        }
       .fog-form {
            width: 360px;
            margin: 50px auto;
            font-family: Arial, sans-serif;
        }
        .fog-form form {
            background: rgba(255, 255, 255, 0.5);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .fog-form h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-control {
            border-radius: 20px;
        }
        .fog-btn {
            border-radius: 20px;
        }
        .remember-link {
            text-align: center;
            margin-top: 15px;
        }
        
</style>
    
</head>
<body>

    <div class="fog-form">
        
        <form action="ForgetPassword" method="post">
        
        	 <h2>Forget Password</h2>
        
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control"  name="email" placeholder="Enter your email" required>
            </div>
            
            <div class="form-group">
                <label for="new password">New Password</label>
                <input type="password" class="form-control" name="newPassword" placeholder="Enter new password" required>
            </div>
            
            <button type="submit" class="btn btn-primary btn-block fog-btn">Submit</button>
            
            <div class="remember-link">
                <p>Remember the password? <a href="Login.jsp">Login here</a></p>
            </div>
            
        </form>
        
    </div>
    
</body>
</html>