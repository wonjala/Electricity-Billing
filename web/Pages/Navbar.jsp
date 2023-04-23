<style>
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
  background: #565FFB;
  
}
.sidebar .nav-links li a:hover{
  background: #565FFB;
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

.home-section nav .profile-details{
  display: flex;
  
  align-items: center;
  background: #F5F6FA;
  border: 2px solid #EFEEF1;
  border-radius: 6px;
  height: 50px;
  min-width: 190px;
  padding: 0 15px 0 2px;
}
nav .profile-details img{
  height: 40px;
  width: 40px;
  border-radius: 6px;
  object-fit: cover;
}
nav .profile-details .admin_name{
  font-size: 15px;
  font-weight: 500;
  color: #333;
  margin: 0 10px;
  white-space: nowrap;
}
nav .profile-details i{
  font-size: 25px;
  color: #333;
}
</style>

    
        <div class="sidebar">
            <div class="logo-details">
                <div class="logo-container">
                    <img src="../Pages/assets/img/logo2.png">
                </div>
                <span class="logo_name">Electricity Billing</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="${pageContext.request.contextPath}/PageChange?page=existing" >
                        <i class='bx bx-grid-alt' ></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/PageChange?page=mydetails">
                        <i class='bx bx-user'></i>
                        <span class="links_name">My Details</span>
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/PageChange?page=addUser">
                        <i class='bx bx-user-plus' ></i>
                        <span class="links_name">Add User</span>
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/PageChange?page=viewuser" >
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">View User</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/PageChange?page=calculate">
                        <i class='bx bx-calculator' ></i>
                        <span class="links_name">Calculate Bill</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/payments.jsp" >
                        <i class='bx bx-history' ></i>
                        <span class="links_name">Payment History</span>
                    </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/Pages/oldpassword.jsp">
                        <i class='bx bx-cog' ></i>
                        <span class="links_name">Change Password</span>
                    </a>
                </li>
                <li class="log_out">
                    <a href="${pageContext.request.contextPath}/Pages/landingpage.jsp">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
                        
                        <script>
                            $(document).ready(function(){
    $('nav ul li a').click(function(){
        $("ul li a").removeClass(".active-page");
        $(this).addClass(".active-page");
    });
});
                        </script>         
<script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>