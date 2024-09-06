<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .gradient-form {
      background-color: #eee;
    }
    .gradient-custom-2 {
      background: linear-gradient(to right, #ff758c, #ff7eb3);
    }
    .login-button {
      background: linear-gradient(to right, #ff758c, #ff7eb3);
      border: none;
      color: white;
    }
  </style>
</head>
<body>
  <section class="h-100 gradient-form">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-10">
          <div class="card rounded-3 text-black">
            <div class="row g-0">
              <div class="col-lg-6">
                <div class="card-body p-md-5 mx-md-4">
                  <div class="text-center">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/lotus.webp"
                         style="width: 185px;" alt="logo">
                    <h4 class="mt-1 mb-5 pb-1">Hello Please Login!</h4>
                  </div>
                  <form name="frm" action="wel" method="get">
                    <p>Please login to your account</p>
                    <div class="form-outline mb-4">
                      <input type="text" name="username" id="form2Example11" class="form-control"
                             placeholder="Username" />
                      <label class="form-label" for="form2Example11">Username</label>
                    </div>
                    <div class="form-outline mb-4">
                      <input type="password" name="password" id="form2Example22" class="form-control" placeholder="Password"/>
                      <label class="form-label" for="form2Example22">Password</label>
                    </div>
                    <div class="text-center pt-1 mb-5 pb-1">
                      <button class="btn btn-primary btn-block fa-lg login-button mb-3" type="submit">Log in</button>
                      <a class="text-muted" href="#!">Forgot password?</a>
                    </div>
                    <div class="text-center">
                      <p>Not an account? <a href="regCust" class="text-primary">Register here</a></p>
                    </div>
                  </form>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                  <h4 class="mb-4">We are more than just a company</h4>
                  <p class="small mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
