<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <style>
            /* Googlefont Poppins CDN Link */
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            .sidebar{
                position: fixed;
                height: 100%;
                width: 240px;
                background: #334195;
                transition: all 0.5s ease;
            }
            .sidebar.active{
                width: 60px;
            }
            .sidebar .logo-details{
                height: 80px;
                display: flex;
                align-items: center;
                padding-left: 15px;
            }
            .sidebar .logo-details .logo-container{
                width:30px;
                height:30px;
            }
            .sidebar .logo-details .logo-container img{
                object-fit: cover;
                width: 100%;
            }
            .sidebar .logo-details .logo_name{
                color: #fff;
                font-size: 20px;
                font-weight: 500;
                margin-left: 8px;
            }
            .sidebar .nav-links{
                margin-top: 10px;
            }
            .sidebar .nav-links li{
                height: 50px;
            }
            .sidebar .nav-links li a{
                height: 100%;
                width: 100%;
                display: flex;
                border-radius: 3px;
                align-items: center;
                text-decoration: none;
                transition: all 0.4s ease;
            }
            .sidebar .nav-links li a.active{
                background: #4059AD;

            }
            .sidebar .nav-links li a:hover{
                background: #4059AD;
            }
            .sidebar .nav-links li i{
                min-width: 60px;
                text-align: center;
                font-size: 18px;
                color: #fff;
            }
            .sidebar .nav-links li a .links_name{
                color: #fff;
                font-size: 15px;
                font-weight: 400;
                white-space: nowrap;
            }
            .sidebar .nav-links .log_out{
                position: absolute;
                bottom: 0;
                width: 100%;
            }

            .home-section{
                position: relative;
                background: #f5f5f5;
                min-height: 100vh;
                width: calc(100% - 240px);
                left: 240px;
                transition: all 0.5s ease;
            }
            .sidebar.active ~ .home-section{
                width: calc(100% - 60px);
                left: 60px;
            }
            .home-section nav{
                display: flex;
                justify-content: space-between;
                height: 80px;
                background: #fff;
                display: flex;
                align-items: center;
                position: fixed;
                width: calc(100% - 240px);
                left: 240px;
                z-index: 100;
                padding: 0 20px;
                box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
                transition: all 0.5s ease;
            }
            .sidebar.active ~ .home-section nav{
                left: 60px;
                width: calc(100% - 60px);
            }
            .home-section nav .sidebar-button{
                display: flex;
                align-items: center;
                font-size: 24px;
                font-weight: 500;
            }
            nav .sidebar-button i{
                font-size: 35px;
                margin-right: 10px;
            }
            /* FILTER START */
            .filter{
                display: flex;
                background-color: white;
                height: 80%;

                padding :10px;
                font-size: 20px;
                align-items: center;
                justify-content:center;
            }
            /* Card */
            .card {
                margin-top: 10%;
                margin-bottom: 30px;
                margin-left: 5%;
                border: none;
                border-radius: 5px;
                position: fixed;
                width: 90%;
                box-shadow: 0px 0 30px rgba(1, 41, 112, 0.1);
            }

            .card-header,
            .card-footer {
                border-color: #ebeef4;
                background-color: #fff;
                color: #798eb3;
                padding: 15px;
            }

            .card-title {
                padding: 20px 0 15px 0;
                font-size: 18px;
                font-weight: 500;
                color: #012970;
                font-family: "Poppins", sans-serif;
            }

            .card-title span {
                color: #899bbd;
                font-size: 14px;
                font-weight: 400;
            }

            .card-body {
                padding: 0 20px 20px 20px;
            }

            .card-img-overlay {
                background-color: rgba(255, 255, 255, 0.6);
            }


        </style>
        <meta charset="UTF-8">

        <link rel="stylesheet" href="style.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="admin.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">

     



        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@include  file="Navbar.jsp"%>
        <section class="home-section">
             <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="Viewusers">View Users</span>
                    <div class="search" style="right: 0;position: absolute;top: 020px; margin-right: 20px">
                        <form action="search.jsp">
                            <input class="form-control mr-sm-2 " type="text" name="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-primary my-2 my-sm-3 " type="submit">Search</button>
                        </form>
                    </div>
                    <br>
                </div>

            </nav>

            <section class="section">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="card">
                            <div class="card-body">
                                <table id="example" class="table table-striped" style="width:100%;">
                                    <thead>
                                        <tr >
                                            <th> User Id </th>
                                            <th> Name </th>
                                            <th>Address</th>
                                            <th> Phone </th>
                                            <th> Scno </th>
                                            <th>Action</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${userList}" var="user">

                                            <tr>
                                                <td> ${user.id} </td>
                                                <td>${user.fullname}</td>
                                                <td>${user.address}</td>
                                                <td>${user.phone}</td>   
                                                <td>${user.scno}</td> 
                                                <td>
                                                    <button class="update" name="userID" value="update"> <a href=" PageChange?page=update&id=${user.id}"> Update </a>   </button>

                                        <!--<button> <a href="PageChange?page=update&id=${user.id}" >Edit</a> </button>-->
                                                </td>
                                                <td>
                                                    <button class="delete"> <a href=" AddServlet?page=deleteUser&id=${user.id}"> Delete </a> </button>
                                                   <!--<button> <a href="AddServlet?page=deleteUser&id=${user.id}" >Delete</a> </button>-->
                                                </td> 
                                            </tr>

                                        </c:forEach>


                                    </tbody>

                                </table>
                            </div>
                        </div>

                    </div>

            
            </section>

            <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>

            <script src="assets/js/scropt.js"></script>
            <script>
                let sidebar = document.querySelector(".sidebar");
                let sidebarBtn = document.querySelector(".sidebarBtn");
                sidebarBtn.onclick = function () {
                    sidebar.classList.toggle("active");
                    if (sidebar.classList.contains("active")) {
                        sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                    } else
                        sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
                }
            </script>


    </body>
</html>

