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

    <!-- Custom CSS -->
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
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/adminhead">Home</a></li>

                        <!-- Customer Management -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="customerDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Customer Management
                            </a>
                            <div class="dropdown-menu" aria-labelledby="customerDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/addviewcust">Add Customer</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/viewCustomer">View Customer</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/viewCustomer">Vehicle</a>
                            </div>
                        </li>

                        <!-- Services -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Services
                            </a>
                            <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/viewService">View Services</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/addService">Add Services</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/showSubServices">Sub Services</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/showacc">Accessories</a>
                            </div>
                        </li>

                        <!-- Reports -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="reportsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Reports
                            </a>
                            <div class="dropdown-menu" aria-labelledby="reportsDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/vehiclemonth">View Monthly Vehicle Reports</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/#">View Customer Wise Vehicle Report</a>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/incomemonth">View Monthly Income</a>
                            </div>
                        </li>

                        <!-- Miscellaneous -->
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/#">Servicing</a></li>
                        <li class="nav-item"><a class="nav-link text-white" href="${pageContext.request.contextPath}/login">Login</a></li>
                        <li class="nav-link text-white ml-5">
                            <a href="custProf" class="text-white">Welcome Admin</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
