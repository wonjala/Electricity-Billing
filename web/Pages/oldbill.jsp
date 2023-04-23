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
                        <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/PagesChange?page=profile">Profile</a></li>
                        <li><a class="nav-link scrollto active" href="${pageContext.request.contextPath}/PageChange?page=viewbill&id=<%HttpSession s = request.getSession();%><%=s.getAttribute("uid")%>">View Bill</a></li>
                        
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
                        <li><a href="${pageContext.request.contextPath}/PageChange?page=home">NEABilling</a></li>
                        <li><a href="${pageContext.request.contextPath}/PageChange?page=viewbill&id=<%=s.getAttribute("uid")%>"></a>View Bill</li>
                        <li>old Bill</li>
                    </ol>


                </div>
            </section>
            <!-- End Breadcrumbs -->

            <section class="viewbill">
                <div class="container-fluid">
                    <br>
                    <h3> Your Bills</h3>
                    <br>
                    <!-- <div class="oldbills">
                     <button class="btn-bills">Make Payment </button></td>
                    </div> -->
                    <table>
                        <thead>
                            <tr>
                                <th><label>Invoice no.</label></th>
                                <th><label>Uid</label></th>
                                <th><label>Name</label></th>
                                <th><label>Date</label></th>
                                <th><label>Due Date</label></th>
                                <th><label>Units</label></th>
                                <th><label>Amount</label></th>
                                <th><label>Status</label></th>
                                <!--                                <th><label>Action</label></th>-->
                            </tr>
                        </thead>

                        <tbody>

                            <!--select * from user_details inner join bill on user_details.id = bill.id-->


                             <c:forEach items="${billList}" var="user">
                            <tr>
                               
                                    <td> ${user.bill.id} </td>
                                    <td>${user.id}</td>
                                    <td>${user.fullname}</td>
                                    <td>${user.bill.date}</td>
                                    <td>${user.dueDate}</td>
                                    <td>${user.bill.unit}</td>
                                         <td data-label="Amount">
                                    <c:choose>
                                        <c:when test="${user.bill.unit < 20}">${user.bill.unit * 4}</c:when>
                                        <c:when test="${user.bill.unit < 50}">${user.bill.unit * 7.30}</c:when>
                                        <c:when test="${user.bill.unit < 150}">${user.bill.unit * 8.60}</c:when>
                                        <c:when test="${user.bill.unit < 250}">${user.bill.unit * 9.50}</c:when>
                                        <c:otherwise>${user.bill.unit * 11}</c:otherwise>
                                    </c:choose>

                                </td>


                                      <td data-label="Status">
                                    <c:choose>
                                        <c:when test="${1 == user.bill.status}">Paid</c:when>
                                        <c:otherwise>Unpaid</c:otherwise>
                                    </c:choose>
                                    <!--                                <td data-label="Payment"><button class="btn-invoice">Make Payment </button></td>-->
                                    
                                    </tr>
                                    </c:forEach >
                                </tbody>
                            </table>

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
                <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
                <script src="assets/vendor/aos/aos.js"></script>
                <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
                <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
                <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
                <script src="assets/vendor/php-email-form/validate.js"></script>

                <!-- Template Main JS File -->
                <script src="assets/js/main.js"></script>

            </body>

        </html>