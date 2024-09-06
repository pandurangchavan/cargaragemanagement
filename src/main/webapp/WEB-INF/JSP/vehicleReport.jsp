<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Monthly Vehicle Report</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <jsp:include page="adminhead.jsp"></jsp:include>
    <h2>Monthly Vehicle Report</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Vehicle ID</th>
                <th>Vehicle Number</th>
                <th>Model</th>
                <th>Make</th>
                <th>Year</th>
                <th>Customer Name</th>
                <th>Customer Phone</th>
                <th>Servicing ID</th>
                <th>Service Date</th>
                <th>Total Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="report" items="${reportList}">
                <tr>
                    <td>${report.vehicleID}</td>
                    <td>${report.vehicleNumber}</td>
                    <td>${report.model}</td>
                    <td>${report.make}</td>
                    <td>${report.year}</td>
                    <td>${report.customerName}</td>
                    <td>${report.customerPhone}</td>
                    <td>${report.servicingID}</td>
                    <td>${report.serviceDate}</td>
                    <td>${report.totalPrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
