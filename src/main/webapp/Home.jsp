<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
    <style>
        body {
            background-image: url('./images/home.jpg');
            background-size: cover;
        	background-repeat: no-repeat;
        }
        .navbar {
            margin-bottom: 20px;
            background-color: #343a40 !important;
        }
        .navbar-brand {
            font-weight: bold;
            color: #fff; 
        }
        .logout-btn {
            margin-left: auto;
            color: #ffff; 
        }
        .message {
            text-align: center;
            margin-top: 50px;
            font-size: 24px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<c:set var="cus" value="${CusDetails}"/>

    <nav class="navbar navbar-expand-lg ">
        <p class="navbar-brand">Hello, ${cus.name } </p>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link logout-btn" href="Login.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>
    
    
    <div class="container">
        <div class="message">
           <pre> ${cus.name } , You are successfully logged in </pre>
        </div>
    </div>
</body>
</html>