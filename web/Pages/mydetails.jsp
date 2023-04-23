<%-- 
    Document   : mydetails
    Created on : Mar 10, 2023, 9:43:19 AM
    Author     : DELL
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
              <img src="./Pages/styling/assets/img/profile1.jpg" alt="Profile" class="rounded-circle">
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
        <a class="nav-link collapsed" href="${pageContext.request.contextPath}/PageChange?page=viewuser">
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
        <a class="nav-link  " href="${pageContext.request.contextPath}/PageChange?page=mydetails">
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
      <h1>Add User</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/PageChange?page=existing">Home</a></li>
          <li class="breadcrumb-item active">Profile</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
       

        <div class="col-xl-12">

          <div class="card">
            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                <img src="./Pages/assets/img/profile1.jpg" alt="Profile" class="rounded-circle">
                <h2>Admin Account</h2>
                <h3>Overview</h3>
               
              </div>
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
                </li>

                  <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
                </li>

              </ul>
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  

                  <h5 class="card-title">Profile Details</h5>
                  
                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">Full Name</div>
                    <div class="col-lg-9 col-md-8"> ${admindetails.fullname}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Address</div>
                    <div class="col-lg-9 col-md-8">${admindetails.address}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Phone</div>
                    <div class="col-lg-9 col-md-8">${admindetails.phone}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">Email</div>
                    <div class="col-lg-9 col-md-8">${admindetails.email}</div>
                  </div>

                </div>

               
               

                    <div class="tab-pane fade pt-3" id="profile-change-password">
                <!-- Change Password Form -->
                <form action="AddServlet?page=changepass" method="post">
                    <input type="hidden" name="username" value="${admindetails.email}"/>
                  <div class="row mb-3">
                    <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="CurrentPassword" type="password" class="form-control" id="currentPassword">
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="NewPassword" type="password" class="form-control" id="newPassword">
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="ConfirmPassword" type="password" class="form-control" id="renewPassword">
                    </div>
                  </div>

                  <div class="text-center">
                    <button type="submit" class="btn btn-primary">Change Password</button>
                  </div>
                </form><!-- End Change Password Form -->

                </div>

              </div><!-- End Bordered Tabs -->

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

