<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Electricity Billing</title>
        <meta content="" name="description">

        <meta content="" name="keywords">



        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">


        <link href="assets/css/style.css" rel="stylesheet">


    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top">
            <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

                <a href="${pageContext.request.contextPath}/PageChange?page=landing" class="logo d-flex align-items-center">
                    <img src="assets/img/logo (3).png" alt="">
                    <span>NEABilling</span>
                </a>

                <nav id="navbar" class="navbar">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                        <li><a class="nav-link scrollto" href="#about">About</a></li>
                        <li><a class="nav-link scrollto" href="#services">Services</a></li>
                        <li><a class="nav-link scrollto" href="#features">Features</a></li>
                        <li><a class="nav-link scrollto" href="#team">Team</a></li>
                        

                        <li><a href="${pageContext.request.contextPath}/PageChange?page=userlogin">Login</a></li>
                    </ul>
                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="hero d-flex align-items-center">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6 d-flex flex-column justify-content-center">
                        <h1 data-aos="fade-up">Electricity Billing System</h1>
                        <h2 data-aos="fade-up" data-aos-delay="400">Efficient and affordable billing system for your electricity needs</h2>
                        <div data-aos="fade-up" data-aos-delay="600">
                            <div class="text-center text-lg-start">
                                <a href="${pageContext.request.contextPath}/PageChange?page=userlogin" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                                    <span>Get Started</span>
                                    <i class="bi bi-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
                        <img src="assets/img/energy2.png" class="img-fluid" style="margin-top: 10%"  alt="">
                    </div>
                </div>
            </div>

        </section><!-- End Hero -->
        <br>

        <main id="main">
            <!-- ======= About Section ======= -->
            <section id="about" class="about">

                <div class="container" data-aos="fade-up">
                    <div class="row gx-0">

                        <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">
                            <div class="content">
                                <h3>About Us</h3>
                                <h2>Empowering your energy choices for a brighter tomorrow.</h2>
                                <p>
                                    NEABilling is an online platform that allows customers to conveniently generate, pay, and view their electricity bills. Through the system, customers can access their account and view their current and past electricity bills. The system automatically generates bills based on the customer's electricity usage. This system provides customers with a hassle-free way to manage their electricity bills from the comfort of their homes. 
                                </p>
                                
                            </div>
                        </div> 

                        <div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out" data-aos-delay="200" style="border-style: solid; border:#f6f9ff"> 
                            <img src="assets/img/energy1.jpg" class="img-fluid" alt="">
                        </div>

                    </div>
                </div>

            </section><!-- End About Section -->
            <br>
            <br>

            <!-- ======= Values Section ======= -->
            <section id="services" class="services">

                <div class="container" data-aos="fade-up">
                    <br>
                    <header class="section-header">
                        <h2>Our Services</h2>
                        <p>we provide the best services</p>
                    </header>

                    <div class="row">

                        <div class="col-lg-4" data-aos="fade-up" data-aos-delay="200">
                            <div class="box">
                                <img src="assets/img/1.jpg" class="img-fluid" alt="">
                                <h3>Online bill payment</h3>
                                <p>Allows customers to pay their electricity bills online and manage their accounts from the comfort of their homes.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="400">
                            <div class="box">
                                <img src="assets/img/2.jpeg" class="img-fluid" alt="">
                                <h3>24/7 customer support</h3>
                                <p> Provides 24/7 customer support, allowing customers to get assistance at any time.</p>
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="600">
                            <div class="box">
                                <img src="assets/img/3.jpg" class="img-fluid" alt="">
                                <h3>Automated meter readings</h3>
                                <p>provides accurate and up-to-date meter readings, which are used to generate the customer's electricity bills.</p>
                            </div>
                        </div>

                    </div>

                </div>

            </section><!-- End Values Section -->

            <br>
            <br>

            <br>

            <!-- ======= Features Section ======= -->
            <section id="features" class="features">

                <div class="container" data-aos="fade-up">
                    <br>
                    <header class="section-header">
                        <h2>Features</h2>
                        <p>Powering your life with convenience and affordability</p>
                    </header>

                    <div class="row">

                        <div class="col-lg-6">
                            <img src="assets/img/feature.jpg" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-6 mt-5 mt-lg-0 d-flex">
                            <div class="row align-self-center gy-4">

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="200">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Online bill payment</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="300">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Automated meter reading</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="400">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Detailed billing history </h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="500">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Customer support</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="600">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Secure payment</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="700">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Secure login and password protection</h3>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div> <!-- / row -->

                </div>

            </section><!-- End Features Section -->


            <br>
            <br>
            <!-- ======= F.A.Q Section ======= -->
            <section id="faq" class="faq">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <h2>F.A.Q</h2>
                        <p>Frequently Asked Questions</p>
                    </header>

                    <div class="row">
                        <div class="col-lg-6">
                            <!-- F.A.Q List 1-->
                            <div class="accordion accordion-flush" id="faqlist1">
                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-1">
                                            What is the NEA billing ?
                                        </button>
                                    </h2>
                                    <div id="faq-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                                        <div class="accordion-body">
                                            NEABilling is an online platform that allows customers to manage their electricity bills and usage conveniently and efficiently.                  </div>
                                    </div>
                                </div>

                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-2">
                                            How can I access the NEABilling?
                                        </button>
                                    </h2>
                                    <div id="faq-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                                        <div class="accordion-body">
                                            Customers can access the system through a web browser or a mobile app.                  </div>
                                    </div>
                                </div>

                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq-content-3">
                                            Can I pay my electricity bills online through the system?                  </button>
                                    </h2>
                                    <div id="faq-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist1">
                                        <div class="accordion-body">
                                            Yes, customers can pay their electricity bills online through the system using various payment options such as credit/debit cards, bank transfers, and mobile payment platforms.                  </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-6">

                            <!-- F.A.Q List 2-->
                            <div class="accordion accordion-flush" id="faqlist2">

                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-1">
                                            How can I contact customer support if I have questions or concerns about my electricity bill or account?                  </button>
                                    </h2>
                                    <div id="faq2-content-1" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                                        <div class="accordion-body">
                                            Customers can contact customer support through various channels such as phone, email, or social media.                  </div>
                                    </div>
                                </div>

                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-2">
                                            Is my account information and payment data secure on the system?                  </button>
                                    </h2>
                                    <div id="faq2-content-2" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                                        <div class="accordion-body">
                                            Yes, the system uses secure login and password protection, to ensure that customers' account information and payment data are protected and secure.                  </div>
                                    </div>
                                </div>

                                <div class="accordion-item">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#faq2-content-3">
                                            Is automated meter reading more accurate than manual meter reading?                  </button>
                                    </h2>
                                    <div id="faq2-content-3" class="accordion-collapse collapse" data-bs-parent="#faqlist2">
                                        <div class="accordion-body">
                                            Yes, automated meter reading is more accurate than manual meter reading because it eliminates the possibility of human error in the meter reading process.                  </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>

                </div>

            </section><!-- End F.A.Q Section -->



            <!-- ======= Team Section ======= -->
            <section id="team" class="team">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <h2>Team</h2>
                        <p>Our NEA team</p>
                    </header>

                    <div class="row gy-4">

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
                            <div class="member">
                                <div class="member-img">
                                    <img src="assets/img/team3.jpg" class="img-fluid" alt="">
                                    <!-- <div class="social">
                                      <a href=""><i class="bi bi-twitter"></i></a>
                                      <a href=""><i class="bi bi-facebook"></i></a>
                                      <a href=""><i class="bi bi-instagram"></i></a>
                                      <a href=""><i class="bi bi-linkedin"></i></a>
                                    </div> -->
                                </div>
                                <div class="member-info">
                                    <h4>Rajendra Prasad Lingden</h4>
                                    <span>Hon'ble Minister for Energy, Water Resources and Irrigation</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
                            <div class="member">
                                <div class="member-img">
                                    <img src="assets/img/team 4.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="member-info">
                                    <h4>Dinesh Kumar Ghimire</h4>
                                    <span>Secretary, Ministry of Energy, Water Resources and Irrigation </span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
                            <div class="member">
                                <div class="member-img">
                                    <img src="assets/img/kulman.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="member-info">
                                    <h4>Kul Man Ghising</h4>
                                    <span>NEA Managing Director</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
                            <div class="member">
                                <div class="member-img">
                                    <img src="assets/img/team2.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="member-info">
                                    <h4>Suresh Bahadur Bhattarai</h4>
                                    <span>SpokePerson</span>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </section><!-- End Team Section -->



      

            <br>
            <br>


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
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- JS File -->
        <script src="assets/js/main.js"></script>

    </body>

</html>