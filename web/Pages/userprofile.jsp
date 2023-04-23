<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View Bill</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

 

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

      <!-- Vendor CSS Files -->
        <link href="Pages/assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="Pages/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="Pages/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="Pages/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="Pages/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="Pages/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- CSS File -->
        <link href="Pages/assets/css/style.css" rel="stylesheet">

</head>

<body>
    <style>
   
   .view{
  width: 100%;
  height: 100vh;
  background: url(Pages/assets/img/bg.png) top center no-repeat;
  background-size: cover;
}
    .view h3{
     text-align: center;   
    }


        /*--------------------------------------------------------------
    # Profie Page
    --------------------------------------------------------------*/
    .profile .profile-card img {
      max-width: 120px;
    }
    
    .profile .profile-card h2 {
      font-size: 24px;
      font-weight: 700;
      color: #2c384e;
      margin: 10px 0 0 0;
    }
    
    .profile .profile-card h3 {
      font-size: 18px;
    }
    
    .profile .profile-card .social-links a {
      font-size: 20px;
      display: inline-block;
      color: rgba(1, 41, 112, 0.5);
      line-height: 0;
      margin-right: 10px;
      transition: 0.3s;
    }
    
    .profile .profile-card .social-links a:hover {
      color: #012970;
    }
    
    .profile .profile-overview .row {
      margin-bottom: 20px;
      font-size: 15px;
    }
    
    .profile .profile-overview .card-title {
      color: #012970;
    }
    
    .profile .profile-overview .label {
      font-weight: 600;
      color: rgba(1, 41, 112, 0.6);
    }
    
    .profile .profile-edit label {
      font-weight: 600;
      color: rgba(1, 41, 112, 0.6);
    }
    
    .profile .profile-edit img {
      max-width: 120px;
    }
   
    
    </style>
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="${pageContext.request.contextPath}/PageChange?page=home" class="logo d-flex align-items-center">
                              <img src="Pages/assets/img/logo (3).png" alt="">
                    <span>NEABilling</span>
                </a>

      <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="nav-link scrollto " href="${pageContext.request.contextPath}/PageChange?page=home">Home</a></li>
                        <li><a class="nav-link scrollto active" href="${pageContext.request.contextPath}/PageChange?page=profile">Profile</a></li>
                        <li><a class="nav-link scrollto " href="${pageContext.request.contextPath}/PageChange?page=viewbill&id=<%HttpSession s = request.getSession();%><%=s.getAttribute("uid")%>">View Bill</a></li>

                        <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/Pages/landingpage.jsp">Logout</a></li>



                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.html">NEABilling</a></li>
          <li>View Bill</li>
        </ol>
      

      </div>
    </section>
    <!-- End Breadcrumbs -->
    <section class="view">
        <div class="container-fluid">
            <br>
            <h3> Your profile </h3>
            <br>
        
        <div class="card" style="margin-bottom: 10%; width: 90%; margin-left: 5%;">
            
          <div class="card-body pt-3">
            <!-- Bordered Tabs -->
            <ul class="nav nav-tabs nav-tabs-bordered">

              <li class="nav-item">
                <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Overview</button>
              </li>

              <li class="nav-item">
                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Edit Profile</button>
              </li>

              <li class="nav-item">
                <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Change Password</button>
              </li>

            </ul>
            <div class="tab-content pt-2">     

              <div class="tab-pane fade show active profile-overview" id="profile-overview">
<!--                <h5 class="card-title">About</h5>
                <p class="small fst-italic">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>-->

                <h5 class="card-title">Profile Details</h5>
                  
                <div class="row">
                  <div class="col-lg-3 col-md-4 label ">UID</div>
                  <div class="col-lg-9 col-md-8">${user.id}</div>
                </div>
                <div class="row">
                  <div class="col-lg-3 col-md-4 label ">Full Name</div>
                  <div class="col-lg-9 col-md-8">${user.fullname}</div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Address</div>
                  <div class="col-lg-9 col-md-8">${user.address}</div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Phone No.</div>
                  <div class="col-lg-9 col-md-8">${user.phone}</div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">Email</div>
                  <div class="col-lg-9 col-md-8">${user.email}</div>
                </div>

                <div class="row">
                  <div class="col-lg-3 col-md-4 label">SCNO.</div>
                  <div class="col-lg-9 col-md-8">${user.scno}</div>
                </div>

          
              </div>
                

              <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                <!-- Profile Edit Form -->
                <form action="AddServlet?page=updateprofile&id=${user.id}" method="post">
                 

                  <div class="row mb-3">
                    <label for="username" class="col-md-4 col-lg-3 col-form-label">Full Name</label>
                    <div class="col-md-8 col-lg-9">
                         <input type="text" class="form-control" id="name" placeholder="Full name" name="username" value="${user.fullname}" required>
               
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                    <div class="col-md-8 col-lg-9">
                        <input type="text" class="form-control" name="address" id="Address" placeholder="Location"  value="${user.address}" required>
                     
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="phone" class="col-md-4 col-lg-3 col-form-label">Phone No.</label>
                    <div class="col-md-8 col-lg-9">
                    <input type="number" class="form-control" name="phone" id="number" placeholder="mobile number" value="${user.phone}" required>

                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                    <div class="col-md-8 col-lg-9">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" value="${user.email}" required>

                    </div>
                  </div>

                                             
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                  </div>
                </form><!-- End Profile Edit Form -->

              </div>

            

              <div class="tab-pane fade pt-3" id="profile-change-password">
                <!-- Change Password Form -->
                <form action="AddServlet?page=updatepass" method="post">
                    <input type="hidden" name="username" value="${user.email}"/>
                  <div class="row mb-3">
                    <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="CurrentPassword" type="password" class="form-control" id="currentPassword" minlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="NewPassword" type="password" class="form-control" id="newPassword" minlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required>
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                    <div class="col-md-8 col-lg-9">
                      <input name="ConfirmPassword" type="password" class="form-control" id="renewPassword" minlength="8" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required>
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

    <div class="footer-top">
      <div class="container">
        <div class="row gy-4">
          <div class="col-lg-5 col-md-12 footer-info">
            <a href="index.html" class="logo d-flex align-items-center">
              <img src="assets/img/logo.png" alt="">
              <span>NEABilling</span>
            </a>
            <p>Powering your life with convenience and affordability.</p>
            <div class="social-links mt-3">
              <a href="https://twitter.com/Hello_NEA" class="twitter"><i class="bi bi-twitter"></i></a>
              <a href="https://www.facebook.com/nepalelectricityauthority" class="facebook"><i class="bi bi-facebook"></i></a>
              <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Features</a></li>
              <!-- <li><i class="bi bi-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
            </ul>
          </div>

          <div class="col-lg-2 col-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Online bill payment</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">24/7 Customer support</a></li>
              <li><i class="bi bi-chevron-right"></i> <a href="#">Automated Billing</a></li>
        
            </ul>
          </div>

          <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
            <h4>Contact Us</h4>
            <p>
              Central Office,  <br>
              Durbarmarg, Kathmandu<br>
              Nepal <br><br>
              <strong>Phone:</strong> 	977-1-4153051<br>
              <strong>Email:</strong> 	info@nea.org.np<br>
            </p>

          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>NEABilling </span></strong>2023 Electricity Billing System. All rights reserved
      </div>
      <div class="credits">
   
       
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

   <!-- Vendor JS Files -->
  <script src="Pages/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="Pages/assets/vendor/aos/aos.js"></script>
  <script src="Pages/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="Pages/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="Pages/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="Pages/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="Pages/assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="Pages/assets/js/main.js"></script>

</body>

</html>