/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Bill;
import Model.User;
import Model.login;
import Services.UserServices;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
@WebServlet(name = "PageChange", urlPatterns = {"/PageChange"})
public class PageChange extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html");

        String page = request.getParameter("page");

        System.out.println(page);
        if (page.equalsIgnoreCase("login")) {
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/AdminLogin.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("landing")) {
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/landingpage.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("addUser")) {
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/AddUser.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("mydetails")) {
            User admindetails = new UserServices().getAdminList();
            request.setAttribute("admindetails", admindetails);
            HttpSession hs = request.getSession();
             System.out.println(hs.getAttribute("uid"));
             int id = Integer.parseInt(hs.getAttribute("uid").toString());
            User user = new UserServices().getUserBill(id);
            System.out.println( "\n========================\nUser id: " + user.getId());
            request.setAttribute("user", user);
                    
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/mydetails.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("viewuser")) {
            
            List<User> userList = new UserServices().getUserList();
                    request.setAttribute("userList", userList);
//                    
//                    List<login> userLis = new UserServices().getUser();
//                    request.setAttribute("userList2", userLis);
            
            RequestDispatcher rd = request.getRequestDispatcher("/Pages/viewuser.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("existing")) {
            List<User> userList = new UserServices().getUserList();
             request.setAttribute("totalUser", userList.size());
                    request.setAttribute("userList", userList);
                    
             List<User> payList = new UserServices().getPaymentList();
              request.setAttribute("totalpay", payList.size());
                    request.setAttribute("payList", payList);
                    
               List<User> unpayList = new UserServices().getUnPaidList();
              request.setAttribute("totalunpay", unpayList.size());
                    request.setAttribute("unpayList", unpayList);
            RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=dashboard");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("update")) {
             HttpSession hs = request.getSession();
             System.out.println(hs.getAttribute("uid"));
             int id = Integer.parseInt(hs.getAttribute("uid").toString());
            User user = new UserServices().getUserBill(id);
            System.out.println( "\n========================\nUser id: " + user.getId());
            request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/update.jsp");
            rd.forward(request, response);
        }
         
         if (page.equalsIgnoreCase("dashboard")) {

            List<User> userList = new UserServices().getUserList();
                    request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/Dashboard.jsp");
            rd.forward(request, response);
        }
          if (page.equalsIgnoreCase("payments")) {

            List<User> userList = new UserServices().getPaymentList();
                    request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/payments.jsp");
            rd.forward(request, response);
        }
          
         if (page.equalsIgnoreCase("unpaid")) {

            List<User> unpaylist = new UserServices().getUnPaidList();
            request.setAttribute("unpaylist", unpaylist);
        
            RequestDispatcher rd = request.getRequestDispatcher("Pages/unpaidbills.jsp");
            rd.forward(request, response);
        }
         
         
         
         
        
        //User module starts here
        if (page.equalsIgnoreCase("userlogin")) {

            RequestDispatcher rd = request.getRequestDispatcher("Pages/userlogin.jsp");
            rd.forward(request, response);
        }
        
          if (page.equalsIgnoreCase("calculate")) {

            RequestDispatcher rd = request.getRequestDispatcher("Pages/calculatebill.jsp");
            rd.forward(request, response);
        }
          
        if (page.equalsIgnoreCase("viewbill")) {

            int id = Integer.parseInt(request.getParameter("id"));
            User user = new UserServices().getUserBill(id);
            System.out.println( "\n========================\nUser id: " + user.getId());
            request.setAttribute("user", user);
            
             HttpSession hs = request.getSession();
             System.out.println(hs.getAttribute("uid"));
           
             
                List<User> billList = new UserServices().getOldBill(id);
                    request.setAttribute("billList", billList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/viewbill.jsp");
            rd.forward(request, response);
        }
        
         if (page.equalsIgnoreCase("logout")) {
             new UserServices().logout(request, response);
             
        }
        if (page.equalsIgnoreCase("home")) {

            RequestDispatcher rd = request.getRequestDispatcher("Pages/home.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("profile")) {
            HttpSession hs = request.getSession();
             System.out.println(hs.getAttribute("uid"));
             int id = Integer.parseInt(hs.getAttribute("uid").toString());
            User user = new UserServices().getUserBill(id);
            System.out.println( "\n========================\nUser id: " + user.getId());
            request.setAttribute("user", user);
             
            RequestDispatcher rd = request.getRequestDispatcher("Pages/userprofile.jsp");
            rd.forward(request, response);
        }
         if (page.equalsIgnoreCase("oldbill")) {
             HttpSession hs = request.getSession();
             System.out.println(hs.getAttribute("uid"));
             int id = Integer.parseInt(hs.getAttribute("uid").toString());
             
                List<User> billList = new UserServices().getOldBill(id);
                    request.setAttribute("billList", billList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/oldbill.jsp");
            rd.forward(request, response);
        }
         
         if (page.equalsIgnoreCase("Reset")) {
           
            RequestDispatcher rd = request.getRequestDispatcher("Pages/ResetPassword.jsp");
            rd.forward(request, response);
        }
        
    }
    



/**
 * Returns a short description of the servlet.
 *
 * @return a String containing servlet description
 */
@Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
