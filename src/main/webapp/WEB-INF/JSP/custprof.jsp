<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
    <!-- Include Header -->
    <jsp:include page="indexhead.jsp"></jsp:include>

    <div class="container mt-4">
        <div class="jumbotron text-center">
            <h1 class="display-4">Welcome, ${cust_name}!</h1>
            <p class="lead">Manage your account and view your servicing details.</p>
        </div>
        
        <div class="card">
            <div class="card-header">
                <h5>Customer Options</h5>
            </div>
            <div class="card-body">
                <ul class="list-group">
                    <li class="list-group-item">
                        <a href="getBill" class="btn btn-link">View Bill</a>
                    </li>
                    <li class="list-group-item">
                        <a href="vsDetails" class="btn btn-link">Show All Servicing Details</a>
                    </li>
                    <li class="list-group-item">
                        <a href="viewVehicle" class="btn btn-link">Vihicles</a>
                    </li>
                     <li class="list-group-item">
                        <a href="viewVehicle" class="btn btn-link">View Vihicles</a>
                    </li>
                    <li class="list-group-item">
                        <a href="generateBill" class="btn btn-link">Genarate Bill</a>
                    </li>
                    ${msg }
                </ul>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
