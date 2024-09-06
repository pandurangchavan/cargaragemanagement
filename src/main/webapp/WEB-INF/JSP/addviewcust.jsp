<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f0f0f0;
            color: #333;
            font-family: Arial, sans-serif;
        }

        .container-fluid {
            max-width: 600px;
            margin-top: 50px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .form-group label {
            font-weight: bold;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .msg {
            margin-top: 20px;
            font-size: 1.2em;
            color: green;
        }
    </style>
</head>
<body>
    <jsp:include page="adminhead.jsp"></jsp:include>
    
    <div class="container-fluid">
        <h2 class="mb-4">Add New Customer</h2>
        <form name="frm" action="save" method="post">
            <div class="form-group">
                <label for="custName">Customer Name</label>
                <input type="text" name="name" value="${custName}" class="form-control" placeholder="Customer Name" required>
            </div>

            <div class="form-group">
                <label for="address">Customer Address</label>
                <input type="text" name="address" value="${address}" class="form-control" placeholder="Customer Address" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" name="phone" value="${phone}" class="form-control" placeholder="Phone Number" required>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" value="${email}" class="form-control" placeholder="Email" required>
            </div>

            <div class="form-group">
                <label for="totalVisits">Number Of Visits</label>
                <input type="number" name="totalVisits" value="${totalVisits}" class="form-control" placeholder="Number Of Visits" required>
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" value="${username}" class="form-control" placeholder="Username" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" value="${password}" class="form-control" placeholder="Password" required>
            </div>

            <input type="submit" name="s" value="Add New Customer" class="btn btn-primary w-100">
        </form>

        <div class="msg">
            ${msg}
        </div>
    </div>
</body>
</html>
