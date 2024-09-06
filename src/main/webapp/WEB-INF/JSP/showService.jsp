<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Service List</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <jsp:include page="adminhead.jsp"></jsp:include>
<div class="container mt-5">
    <div class="card">
        <div class="card-header bg-primary text-white">
            <h4>Service List</h4>
        </div>
        <div class="card-body">
            <div class="mb-3">
                <a class="btn btn-outline-primary" href="viewCustomer">Refresh</a>
                <input type="text" class="form-control mt-3" placeholder="Search....">
            </div>

            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Service ID</th>
                            <th scope="col">Service Name</th>
                            <th scope="col">Service Description</th>
                            <th scope="col">Base Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${serviceList}" var="service">
                            <tr>
                                <td>${service.serviceID}</td>
                                <td>${service.serviceName}</td>
                                <td>${service.serviceDescription}</td>
                                <td>${service.basePrice}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
