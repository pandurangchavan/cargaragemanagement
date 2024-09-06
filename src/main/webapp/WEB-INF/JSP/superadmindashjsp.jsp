<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>
<link rel="stylesheet" href="CSS/style.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<style>
    body {
        background-color: #f0f0f0; /* Light Gray Background */
        color: #333; /* Text color */
        font-family: Arial, sans-serif; /* Font style */
    }

    .full-height {
        height: 100vh;
    }

    .nav-pills .nav-link {
        margin-bottom: 10px;
        border: 1px solid #ccc; /* Adding border to navigation links */
        border-radius: 5px;
    }

    .nav-pills .nav-link.active {
        background-color: #007bff;
        color: white;
    }

    .tab-content > .tab-pane {
        height: calc(100vh - 3.5rem);
        overflow-y: auto;
        border: 1px solid #ccc; /* Adding border to tab content */
        border-radius: 5px;
        background-color: #fff; /* White background for tab content */
        padding: 20px;
    }

    .container-fluid {
        border: 1px solid #ccc; /* Adding border to the main container */
        border-radius: 10px;
        background-color: #fff; /* White background for the container */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adding a subtle shadow */
    }

    .menubar {
        border-right: 2px solid #ccc; /* Adding border to the left sidebar */
        padding: 20px;
        background-color: #f8f9fa; /* Light background for the sidebar */
    }

    .form-control {
        margin-bottom: 10px;
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
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<div class="container-fluid full-height">
  <div class="row full-height">
    <div class="col-md-3 d-flex align-items-start full-height menubar">
      <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Customer</button>
        <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Vehicle</button>
        <button class="nav-link" id="v-pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#v-pills-disabled" type="button" role="tab" aria-controls="v-pills-disabled" aria-selected="false" disabled>Disabled</button>
        <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Service</button>
        <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Servicing</button>
        <button class="nav-link" id="v-pills-billing-tab" data-bs-toggle="pill" data-bs-target="#v-pills-billing" type="button" role="tab" aria-controls="v-pills-billing" aria-selected="false">Billing</button>
      </div>
    </div>
    <div class="col-md-9 d-flex align-items-start full-height">
      <div class="tab-content w-100" id="v-pills-tabContent">
        <div class="tab-pane fade show active p-4" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab" tabindex="0">
    
          <ul class="nav nav-pills mb-3 " id="pills-tab" role="tablist">
            <li class="nav-item mx-3" role="presentation">
              <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">New Customer</button>
            </li>
            <li class="nav-item mx-3" role="presentation">
              <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false" >View Customer</button>
            </li>
            <li class="nav-item mx-3" role="presentation">
              <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Search Customer</button>
            </li>
            <li class="nav-item mx-3" role="presentation">
              <button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled" aria-selected="false" disabled>Disabled</button>
            </li>
          </ul>
        
          <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">
              <form name="frm" action="save" method="post">
                <div class="form-group">
                  <label for="custName">Customer Name</label>
                  <input type="text" name="name" value="${custName}" class="form-control" placeholder="Customer Name">
                </div>

                <div class="form-group">
                  <label for="address">Customer Address</label>
                  <input type="text" name="address" value="${address}" class="form-control" placeholder="Customer Address">
                </div>

                <div class="form-group">
                  <label for="phone">Phone Number</label>
                  <input type="text" name="phone" value="${phone}" class="form-control" placeholder="Phone Number">
                </div>

                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="email" name="email" value="${email}" class="form-control" placeholder="Email">
                </div>

                <div class="form-group">
                  <label for="totalVisits">Number Of Visits</label>
                  <input type="number" name="totalVisits" value="${totalVisits}" class="form-control" placeholder="Number Of Visits">
                </div>
                <div class="form-group">
                  <label for="username">Username</label>
                  <input type="text" name="username" value="${username}" class="form-control" placeholder="username">
                </div>
                <div class="form-group">
                  <label for="password">Password</label> 
                  <input type="password" name="password" value="${password}" class="form-control" placeholder="password">
                </div>

                <input type="submit" name="s" value="Add New Customer" class="form-control">
              </form>
              ${msg}
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
           <a class="link-primary" href="viewCustomer">Refresh</a>
           <input type="text" class="form-control" placeholder="Search....">
             <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Address</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Total Visits</th>
                <th scope="col">Update</th>
                <th scope="col">Delete</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="d" items="${custList}">
                <tr>
                  <!--    <th scope="row">${c.getCustomerID()}</th> -->
                   <td>${d.getCustomerID()}</td>
                    <td>${d.getName()}</td>
                    <td>${d.getAddress()}</td>
                    <td>${d.getPhone()}</td>
                    <td>${d.getEmail()}</td>
                    <td>${d.getTotalVisits()}</td>
                    <td><a href="#">Update</a></td>
                    <td><a href="deleteCustById?custid=${d.getCustomerID()}">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
            </div>
            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">...</div>
            <div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">...</div>
          </div>
        </div>
        <div class="tab-pane fade p-4" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab" tabindex="0">
        
       <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Home</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Profile</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Contact</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-disabled-tab" data-bs-toggle="pill" data-bs-target="#pills-disabled" type="button" role="tab" aria-controls="pills-disabled" aria-selected="false" disabled>Disabled</button>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">.w..</div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">..d.</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">..a.</div>
  <div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">...</div>
</div>
          <h1>Hello, Profile!</h1>
        </div>
        <div class="tab-pane fade p-4" id="v-pills-disabled" role="tabpanel" aria-labelledby="v-pills-disabled-tab" tabindex="0">
          This is some placeholder content for the Disabled tab.
        </div>
        <div class="tab-pane fade p-4" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab" tabindex="0">...</div>
        <div class="tab-pane fade p-4" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab" tabindex="0">...</div>
        <div class="tab-pane fade p-4" id="v-pills-billing" role="tabpanel" aria-labelledby="v-pills-billing-tab" tabindex="0">...</div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
