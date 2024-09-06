<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Service Details Form</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .form-check-label {
            word-break: break-word;
        }
        .card-header {
            background-color: #6f42c1;
            color: white;
        }
    </style>
    <script>
        function calculateTotal() {
            var total = 0;

            var selectedService = document.querySelector('input[name="serviceID"]:checked');
            if (selectedService) {
                total += parseFloat(selectedService.getAttribute("data-price"));
            }

            var selectedSubService = document.querySelector('input[name="subServiceID"]:checked');
            if (selectedSubService) {
                total += parseFloat(selectedSubService.getAttribute("data-price"));
            }

            var selectedAccessory = document.querySelector('input[name="accessoryID"]:checked');
            if (selectedAccessory) {
                total += parseFloat(selectedAccessory.getAttribute("data-price"));
            }

            document.getElementById('totalPrice').innerText = "Total Price: ₹" + total.toFixed(2);

            // Update hidden input field with the total price
            document.getElementById('hiddenTotalPrice').value = total.toFixed(2);
        }
    </script>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h4>Service Details Form</h4>
            </div>
            <div class="card-body">
                <form:form action="${pageContext.request.contextPath}/submitServiceDetails" method="post" modelAttribute="serviceDetailsForm">
                    
                    <!-- Services Selection -->
                    <div class="form-group">
                        <label for="services">Services:</label>
                        <div class="pl-3" id="services">
                            <c:forEach var="service" items="${serviceList}">
                                <div class="form-check">
                                    <input type="radio" id="service_${service.serviceID}" name="serviceID" value="${service.serviceID}" class="form-check-input" 
                                           data-price="${service.basePrice}" onclick="calculateTotal()" />
                                    <label class="form-check-label" for="service_${service.serviceID}">
                                        ${service.serviceName} - ${service.serviceDescription} (₹${service.basePrice})
                                    </label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    
                    <!-- Sub-Services Selection -->
                    <div class="form-group">
                        <label for="subservices">Sub-Services:</label>
                        <div class="pl-3" id="subservices">
                            <c:forEach var="subService" items="${subservice}">
                                <div class="form-check">
                                    <input type="radio" id="subservice_${subService.subServiceID}" name="subServiceID" value="${subService.subServiceID}" class="form-check-input" 
                                           data-price="${subService.subServicePrice}" onclick="calculateTotal()" />
                                    <label class="form-check-label" for="subservice_${subService.subServiceID}">
                                        ${subService.subServiceName} - ${subService.subServiceDescription} (₹${subService.subServicePrice})
                                    </label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    
                    <!-- Accessories Selection -->
                    <div class="form-group">
                        <label for="accessories">Accessories:</label>
                        <div class="pl-3" id="accessories">
                            <c:forEach var="accessory" items="${showac}">
                                <div class="form-check">
                                    <input type="radio" id="accessory_${accessory.accessoriesId}" name="accessoryID" value="${accessory.accessoriesId}" class="form-check-input" 
                                           data-price="${accessory.price}" onclick="calculateTotal()" />
                                    <label class="form-check-label" for="accessory_${accessory.accessoriesId}">
                                        ${accessory.name} (₹${accessory.price})
                                    </label>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                    <!-- Display Total Price -->
                    <div class="form-group">
                        <p id="totalPrice">Total Price: ₹0.00</p>
                    </div>

                    <!-- Hidden input for total price -->
                    <input type="hidden" id="hiddenTotalPrice" name="totalPrice" value="0.00" />

                    <!-- Submit Button -->
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
