<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Add Service</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <jsp:include page="adminhead.jsp"></jsp:include>
<div class="container mt-5">
    <div class="card">
        <div class="card-header bg-success text-white">
            <h4>Add Service</h4>
        </div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/saveService" method="post">
                <div class="form-group">
                    <label for="serviceName">Service Name</label>
                    <input type="text" name="serviceName" id="serviceName" class="form-control" required placeholder="Enter Service Name">
                </div>
                <div class="form-group">
                    <label for="serviceDescription">Service Description</label>
                    <textarea name="serviceDescription" id="serviceDescription" class="form-control" rows="3" placeholder="Enter Service Description"></textarea>
                </div>
                <div class="form-group">
                    <label for="basePrice">Base Price</label>
                    <input type="number" name="basePrice" id="basePrice" class="form-control" step="0.01" required placeholder="Enter Base Price">
                </div>
                <button type="submit" class="btn btn-primary">Save Service</button>
                <a href="${pageContext.request.contextPath}/services" class="btn btn-secondary">Cancel</a>
            </form>
            ${msg}
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
