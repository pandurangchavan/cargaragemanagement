<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Vehicle Details Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <jsp:include page="indexhead.jsp"></jsp:include>
 <div class="container mt-5">
    <h2 class="text-center mb-4">Vehicle List</h2>
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>Vehicle ID</th>
                <th>Customer ID</th>
                <th>Vehicle Number</th>
                <th>Model</th>
                <th>Make</th>
                <th>Year</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="v" items="${vehicleList}">
                <tr>
                    <td>${v.vehicleID}</td>
                    <td>${v.customerID}</td>
                    <td>${v.vehicleNumber}</td>
                    <td>${v.model}</td>
                    <td>${v.make}</td>
                    <td>${v.year}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>


    <div class="container mt-5">
        <h2 class="text-center mb-4">Enter Vehicle Details</h2>
        <form action="saveVehicleDetails" method="post">
            <div class="form-group">
                <label for="vehicleNumber">Vehicle Number</label>
                <input type="text" class="form-control" id="vehicleNumber" name="vehicleNumber" placeholder="Enter Vehicle Number" required>
            </div>
            <div class="form-group">
                <label for="model">Model</label>
                <input type="text" class="form-control" id="model" name="model" placeholder="Enter Model" required>
            </div>
            <div class="form-group">
                <label for="make">Make</label>
                <input type="text" class="form-control" id="make" name="make" placeholder="Enter Make" required>
            </div>
            <div class="form-group">
                <label for="year">Year</label>
                <input type="number" class="form-control" id="year" name="year" placeholder="Enter Year" required>
            </div>
            <button type="submit" class="btn btn-primary">Save Vehicle Details</button>
        </form>
        ${msg}
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
