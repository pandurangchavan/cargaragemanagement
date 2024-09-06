<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bill Details</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* Additional CSS for print styling */
        @media print {
            .container {
                width: 100%;
                padding: 0;
                margin: 0;
            }
            .print-button {
                display: none;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid black;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #f2f2f2;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Bill Details</h2>
    <button class="btn btn-primary print-button" onclick="window.print()">Print Bill</button>
    
    <!-- Customer Details -->
    <h4>Customer Information</h4>
    <p><strong>Name:</strong> ${billDetails[0].name}</p>
    <p><strong>Phone:</strong> ${billDetails[0].phone}</p>
    <p><strong>Email:</strong> ${billDetails[0].email}</p>

    <!-- Vehicle Details -->
    <h4>Vehicle Information</h4>
    <p><strong>Vehicle Number:</strong> ${billDetails[0].vehicleNumber}</p>
    <p><strong>Model:</strong> ${billDetails[0].model}</p>
    <p><strong>Make:</strong> ${billDetails[0].make}</p>

    <!-- Service Details Table -->
    <h4>Service Details</h4>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Service Date</th>
                <th>Service Name</th>
                <th>Service Description</th>
                <th>Base Price</th>
                <th>Sub-Service Name</th>
                <th>Sub-Service Description</th>
                <th>Sub-Service Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="serviceDetail" items="${billDetails}">
                <tr>
                    <td>${serviceDetail.serviceDate}</td>
                    <td>${serviceDetail.serviceName}</td>
                    <td>${serviceDetail.serviceDescription}</td>
                    <td>${serviceDetail.basePrice}</td>
                    <td>${serviceDetail.subServiceName}</td>
                    <td>${serviceDetail.subServiceDescription}</td>
                    <td>${serviceDetail.subServicePrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Bill Summary -->
    <h4>Bill Summary</h4>
    <p><strong>Bill Date:</strong> ${billDetails[0].billDate}</p>
    <p><strong>Total Amount:</strong> ${billDetails[0].totalAmount}</p>
    <p><strong>Discount Applied:</strong> ${billDetails[0].discountApplied}</p>
    <p><strong>Final Amount:</strong> ${billDetails[0].finalAmount}</p>
</div>
</body>
</html>
