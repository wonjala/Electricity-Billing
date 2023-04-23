<%-- 
    Document   : EnterOTP
    Created on : Apr 6, 2023, 5:09:54 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Login Page</title>
        <meta content="" name="description">
        <meta content="" name="keywords">



        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="./Pages/assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="./Pages/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="./Pages/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="./Pages/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="./Pages/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="./Pages/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!--  CSS File -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <link href="./Pages/assets/css/style.css" rel="stylesheet">


    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top">
            <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

                <a href="index.html" class="logo d-flex align-items-center">
                    <img src="Pages/assets/img/logo.png" alt="">
                    <span>NEABilling</span>
                </a>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="nav-link scrollto " href="${pageContext.request.contextPath}/Pages/landingpage.jsp">Home</a></li>
                        <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/Pages/landingpage.jsp">About</a></li>
                        <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/Pages/landingpage.jsp">Services</a></li>
                        <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/Pages/landingpage.jsp">Features</a></li>
                        <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/Pages/landingpage.jsp">Team</a></li>


                        <li><a class="active" href="${pageContext.request.contextPath}/PageChange?page=userlogin" >Login</a></li>
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
                        <li><a href="index.html">Home</a></li>
                        <li>Login</li>
                    </ol>


                </div>
            </section>
            <!-- End Breadcrumbs -->



            <section class="forgotpass" style="background-image: url(../Pages/assets/img/bg.png); height: 80vh">

                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-light text-dark border-1">
                            <div class="card-body p-4">

                                <div class="row">
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="text-center">
                                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                                <h2 class="text-center">Enter OTP</h2>
                                                <p>Enter OTP send on your email.</p>
                                               <div class="container">
            <div class="form">
                <form action="EmailServlet?page=sendOTP" method="post">
                    <input required type="number" name="OTP" maxlength="6" minlength="6" required />
                    <input type="submit" value="Submit" />
                </form>
            </div>
        </div>




                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>
            <script>
                (function () {
                    'use strict'

            // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.querySelectorAll('.needs-validation')

            // Loop over them and prevent submission
                    Array.prototype.slice.call(forms)
                            .forEach(function (form) {
                                form.addEventListener('submit', function (event) {
                                    if (!form.checkValidity()) {
                                        event.preventDefault()
                                        event.stopPropagation()
                                    }

                                    form.classList.add('was-validated')
                                }, false)
                            })
                })()
            </script>
            <script src="./Pages/assets/vendor/purecounter/purecounter_vanilla.js"></script>
            <script src="./Pages/assets/vendor/aos/aos.js"></script>
            <script src="./Pages/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="./Pages/assets/vendor/glightbox/js/glightbox.min.js"></script>
            <script src="./Pages/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
            <script src="./Pages/assets/vendor/swiper/swiper-bundle.min.js"></script>
            <script src="./Pages/assets/vendor/php-email-form/validate.js"></script>

            <!-- Template Main JS File -->
            <script src="./Pages/assets/js/main.js"></script>

        </body>

    </html>

  