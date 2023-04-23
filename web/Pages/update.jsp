<%-- 
    Document   : AddUser
    Created on : Mar 10, 2023, 9:37:00 AM
    Author     : DELL
--%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta content="" name="description">
  <meta content="" name="keywords">

 
 

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

   <!-- Vendor CSS Files -->
  <link href="./Pages/styling/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./Pages/styling/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="./Pages/styling/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="./Pages/styling/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="./Pages/styling/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="./Pages/styling/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="./Pages/styling/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="./Pages/styling/assets/css/style.css" rel="stylesheet">

 
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Electricity Billing</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

<!--    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div> End Search Bar -->

  <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

         <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
              <img src="./Pages/styling/assets/img/profile1.jpg.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block  ps-2">Admin</span>
          </a><!-- End Profile Iamge Icon -->

 
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link collapsed " href="${pageContext.request.contextPath}/PageChange?page=existing">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/PageChange?page=addUser">
          <i class="bx bx-user-plus"></i>
          <span>Add User</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath}/PageChange?page=viewuser">
          <i class="bx bx-list-ul"></i>
          <span>View User</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/PageChange?page=calculate">
          <i class="bx bx-calculator"></i>
          <span>Calculate Bill</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/PageChange?page=payments">
          <i class="bx bx-history"></i>
          <span>Payment History</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link  collapsed" href="${pageContext.request.contextPath}/PageChange?page=mydetails">
          <i class="bx bx-user"></i>
          <span>Profile</span>
        </a>
      </li>

      <li class="nav-item-logout">
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/Pages/landingpage.jsp">
          <i class="bx bx-log-out"></i>
          <span>Logout</span>
        </a>
      </li>

      

  </aside><!-- End Sidebar-->


  <main id="main" class="main">

    <div class="pagetitle">
      <h1>View User</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/PageChange?page=existing">Home</a></li>
          <li class="breadcrumb-item active">View User</li>
           <li class="breadcrumb-item active">Update User</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Update User Info</h5>

              <!-- Custom Styled Validation -->
              <form class="row g-3 needs-validation" action="AddServlet?page=update&id=<%=request.getParameter("id")%>" method="post" novalidate>
                <div class="col-md-12">
                  <label for="username" class="form-label">Full name</label>
                  <input type="text" class="form-control" id="name" placeholder="Full name" name="username" value="${user.fullname}" required>
                  <div class="valid-feedback">
                    Looks good!
                  </div>
                  <div class="invalid-feedback">
                    Please provide the Full name.
                  </div>
                </div>
                <div class="col-md-12">
                  <label for="address" class="form-label">Address</label>
                  <input type="text" class="form-control" name="address" id="Address" placeholder="Location"  value="${user.address}" required>
                  <div class="valid-feedback">
                    Looks good!
                  </div>
                  <div class="invalid-feedback">
                    Please provide the user address.
                  </div>
                </div>
             
                  <div class="col-md-12">
                      <label for="email" class="form-label"> Email </label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" value="" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                    <div class="invalid-feedback">
                        Please provide a valid email.
                      </div>
                  </div>
                  <div class="col-md-12">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="number" class="form-control" name="phone" id="number" placeholder="mobile number" value="" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                  </div>
                  <div class="col-md-12">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" value="" required>
                    <div class="valid-feedback">
                      Looks good!
                    </div>
                    <div class="invalid-feedback">
                       Please make sure your password contains at least (a Capital letter, a number and a special character)
                               
                              
                      </div>
                  </div>
               
                <div class="col-12">
                  
                  <button class="btn btn-primary" type="submit" name="button" value="register">Submit</button>
                </div>
              </form><!-- End Custom Styled Validation -->
  
             
            </div>
          </div>

          

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright @2023 <strong><span>Electricity Billing</span></strong>. All Rights Reserved
    </div>
   
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

 <!-- Vendor JS Files -->
  <script src="./Pages/styling/assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="./Pages/styling/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./Pages/styling/assets/vendor/chart.js/chart.umd.js"></script>
  <script src="./Pages/styling/assets/vendor/echarts/echarts.min.js"></script>
  <script src="./Pages/styling/assets/vendor/quill/quill.min.js"></script>
  <script src="./Pages/styling/assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="./Pages/styling/assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="./Pages/styling/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="./Pages/styling/assets/js/main.js"></script>
</body>

</html>