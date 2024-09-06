<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .gradient-custom {
            background: linear-gradient(to right, #ff758c, #ff7eb3);
        }
        .card-registration {
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <!-- Include Header -->
    <jsp:include page="indexhead.jsp"></jsp:include>

    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card card-registration shadow-2-strong" style="border-radius: 15px;">
                    <div class="card-body p-5">
                        <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Register Here</h3>
                        <form name="frm" action="savee" method="post">
                            <div class="form-group mb-4">
                                <label for="custName" class="form-label">Customer Name</label>
                                <input type="text" name="name" value="${custName}" class="form-control form-control-lg" placeholder="Customer Name">
                            </div>

                            <div class="form-group mb-4">
                                <label for="address" class="form-label">Customer Address</label>
                                <input type="text" name="address" value="${address}" class="form-control form-control-lg" placeholder="Customer Address">
                            </div>

                            <div class="form-group mb-4">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="text" name="phone" value="${phone}" class="form-control form-control-lg" placeholder="Phone Number">
                            </div>

                            <div class="form-group mb-4">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" name="email" value="${email}" class="form-control form-control-lg" placeholder="Email">
                            </div>

                            <div class="form-group mb-4">
                                <label for="totalVisits" class="form-label">Number Of Visits</label>
                                <input type="number" name="totalVisits" value="${totalVisits}" class="form-control form-control-lg" placeholder="Number Of Visits">
                            </div>

                            <div class="form-group mb-4">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" name="username" value="${username}" class="form-control form-control-lg" placeholder="Username">
                            </div>

                            <div class="form-group mb-4">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" name="password" value="${password}" class="form-control form-control-lg" placeholder="Password">
                            </div>

                            <div class="d-grid">
                                <button type="submit" name="s" class="btn btn-primary btn-lg gradient-custom">Register</button>
                            </div>
                        </form>
                        <!-- Display Message -->
                        <div class="mt-3">
                            ${msg}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
