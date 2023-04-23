/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.User;
import Model.login;
import Services.UserServices;
import java.io.IOException;
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
@WebServlet(name = "AddServlet", urlPatterns = {"/AddServlet"})
public class AddServlet extends HttpServlet {

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

        User user = new User();

        System.out.println("You are in add Servlet");

        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("addUser")) {
            user.setName(request.getParameter("username"));
            user.setAddress(request.getParameter("address"));
            user.setScno(request.getParameter("scno"));
            user.setPhone(request.getParameter("phone"));
            user.setLogin(new login(request.getParameter("email"), request.getParameter("password")));
            System.out.println(user.getAddress());
            new UserServices().insertUser(user);

            RequestDispatcher rd = request.getRequestDispatcher("Pages/AddUser.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("update")) {
            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiiiii");
            user.setName(request.getParameter("username"));
            user.setAddress(request.getParameter("address"));

            user.setPhone(request.getParameter("phone"));
            user.setLogin(new login(request.getParameter("email"), request.getParameter("password")));
            System.out.println(user.getAddress());
            new UserServices().UpdateUser(Integer.parseInt(request.getParameter("id")), user);

            RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=viewuser");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("updateprofile")) {
            System.out.println("update profile");
            user.setName(request.getParameter("username"));
            user.setAddress(request.getParameter("address"));

            user.setPhone(request.getParameter("phone"));
            user.setLogin(new login(request.getParameter("email"), request.getParameter("password")));
            System.out.println(user.getAddress());
            new UserServices().UpdateProfile(Integer.parseInt(request.getParameter("id")), user);

            RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=profile");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("deleteuser")) {
            System.out.println("we are here");
            new UserServices().DeleteUser(Integer.parseInt(request.getParameter("id")));

            RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=viewuser");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("updatepass")) {
            System.out.println("we are here in updatepass");
            String username = request.getParameter("username");
            String oPassword = request.getParameter("CurrentPassword");
            String nPassword = request.getParameter("NewPassword");
            String cPassword = request.getParameter("ConfirmPassword");
            System.out.println(username);
             System.out.println(oPassword);
              System.out.println(nPassword);
               System.out.println(cPassword);
            login us = new UserServices().getUser(username, oPassword);
            System.out.println(us.getId());
            if (us.getId() != 0) {
                if (nPassword.equals(cPassword)) {
                    new UserServices().ResetPassword(nPassword, us.getId());
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=profile");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=profile");
                    rd.forward(request, response);
                }
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=profile");
                rd.forward(request, response);
            }
        }
         if (page.equalsIgnoreCase("changepass")) {
            System.out.println("we are here in changepass");
            String username = request.getParameter("username");
            String oPassword = request.getParameter("CurrentPassword");
            String nPassword = request.getParameter("NewPassword");
            String cPassword = request.getParameter("ConfirmPassword");
            System.out.println(username);
             System.out.println(oPassword);
              System.out.println(nPassword);
               System.out.println(cPassword);
            login us = new UserServices().getUser(username, oPassword);
            System.out.println(us.getId());
            if (us.getId() != 0) {
                if (nPassword.equals(cPassword)) {
                    new UserServices().ResetPassword(nPassword, us.getId());
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=mydetails");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=mydetails");
                    rd.forward(request, response);
                }
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=mydetails");
                rd.forward(request, response);
            }
        }
         
         if (page.equalsIgnoreCase("resetPassword")) {


            String nPassword = request.getParameter("NewPassword");
            String cPassword = request.getParameter("ConfirmPassword");

            if (nPassword.equals(cPassword)) {
                HttpSession s = request.getSession();
                System.out.println(s.getAttribute("EMAIL"));
                new UserServices().ResetPassword(nPassword, s.getAttribute("EMAIL").toString());

                s.invalidate();

                RequestDispatcher dispacher = request.getRequestDispatcher("Pages/userlogin.jsp");
                dispacher.forward(request, response);
            } else {
                RequestDispatcher dispacher = request.getRequestDispatcher("Pages/ResetPassword.jsp");
                dispacher.forward(request, response);
            }
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
