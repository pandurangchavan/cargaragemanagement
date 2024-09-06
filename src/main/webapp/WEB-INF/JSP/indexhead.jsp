<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="Car Repair, Our Services, Team, Customer Feedback, Expertise">
    <meta name="description" content="Car repair and service business. Learn more about our services, expertise, and customer feedback.">
    <title>Home - Car Repair Service</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<style>
    .bg-primary {
            background-color: #2c3e50 !important;
        }
    
     body {
            background-color: #f5f5f5;
        }
    
        /* Ensure navbar is always on top */
        .navbar {
        
            z-index: 1000;
            position: relative;
        }

        /* Adjust the dropdown hover behavior */
        .navbar-nav .nav-item .nav-link {
            margin-right: 15px;
            transition: background-color 0.3s;
        }
        .navbar-nav .nav-item .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
        }
        .dropdown-menu {
            background-color: #2c3e50 !important;
            z-index: 1000;
        }
        .dropdown-item {
            color: white;
        }
        .dropdown-item:hover {
            color: #ccc !important;
        }
    </style>
	
    <!-- Meta Info -->
    <meta name="theme-color" content="#478ac9">
</head>
<body>
 <header class="bg-primary text-white py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand text-white">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/027/385/442/small/car-stainless-logo-png.png" alt="Car Repair Logo" width="80">
                Digital Garage
            </a>
            <nav class="navbar navbar-expand-lg navbar-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/">Home</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/Team.jsp">Team</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/Landing.jsp">Landing</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/About.jsp">About</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/login">Login</a></li>
                        <li class="nav-link text-white ml-5">
    						<a href="custProf" class="text-white"> Welcome ${ cust_name }</a>
						</li>

                    </ul>
                </div>
            </nav>
        </div>
    </header>
</body>
</html>