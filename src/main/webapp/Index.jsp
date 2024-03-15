<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>Welcome</title>

<style>
    body {
      background-image: url('./images/gta.jpg');
      background-size: cover;
      background-repeat: no-repeat;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .btn-container {
      text-align: center;
      background: rgba(255, 255, 255, 0.5);
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .btn-role {
      margin: 10px;
    }
  </style>
  
</head>

<body>

  <div class="container">
    <div class="btn-container">
      <a href="Login.jsp"><button type="button" class="btn btn-primary btn-lg btn-role"> Login </button></a>
      <a href="Register.jsp"><button type="button" class="btn btn-primary btn-lg btn-role"> Register </button></a>
    </div>
    
  </div>

</body>
</html>