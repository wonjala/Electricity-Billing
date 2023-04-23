/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Hashing.HashingPassword;
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
@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

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

        String page = request.getParameter("page");
        if (page.equalsIgnoreCase("existing")) {

            String username = request.getParameter("username");
//            String password = HashingPassword.hashPassword(request.getParameter("password"));
            String password = request.getParameter("password");

            System.out.println(username + " " + password + " ");

            login user = new UserServices().getUser(username, password);
            System.out.println("\n\n=========================================");
//            System.out.println(user.getUsername() + " " + user.getPassword());
            HttpSession session = request.getSession();

            if (user != null) {

                session.setAttribute("uid", user.getId());
                session.setAttribute("fullName", user.getFullname());
                session.setAttribute("user", user);
                //System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));
                System.out.println("--------------hiiiiii-----------------");
//                response.sendRedirect("Pages/Dashboard.jsp");

                if (user.getRole().equalsIgnoreCase("A")) {
                    List<User> userList = new UserServices().getUserList();
                    request.setAttribute("userList", userList);
                    System.out.println("yyy");
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=dashboard");
                    rd.forward(request, response);

                } else {
                    request.setAttribute("msg", "Invalid username or password");

                    System.out.println("Invalid username or password");
                    RequestDispatcher rd = request.getRequestDispatcher("Pages/AdminLogin.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("msg", "Invalid username or password");

                System.out.println("Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("Pages/AdminLogin.jsp");
                rd.forward(request, response);
//                response.sendRedirect("Pages/AdminLogin.jsp");
            }
        }

        //---------------------userlogin starts here-------------------------------------
        if (page.equalsIgnoreCase("login")) {

            String username = request.getParameter("username");
//            String password = HashingPassword.hashPassword(request.getParameter("password"));
            String password = request.getParameter("password");

            System.out.println(username + " " + password + " ");

            login user = new UserServices().getUser(username, password);
            System.out.println("\n\n=========================================");
//            System.out.println(user.getUsername() + " " + user.getPassword());
            HttpSession session = request.getSession();

            if (user != null) {

                session.setAttribute("uid", user.getId());
                session.setAttribute("fullName", user.getFullname());
                session.setAttribute("user", user);
                //System.out.println(session.getAttribute("user"));
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));
                if (user.getRole().equalsIgnoreCase("U")) {
//                response.sendRedirect("Pages/Dashboard.jsp");
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=home");
                    rd.forward(request, response);
                } else if(user.getRole().equalsIgnoreCase("A")) {
                    List<User> userList = new UserServices().getUserList();
                    request.setAttribute("userList", userList);
                    System.out.println("yyy");
                    RequestDispatcher rd = request.getRequestDispatcher("PageChange?page=existing");
                    rd.forward(request, response);

                
            }
                        else {
                    request.setAttribute("msg", "Invalid username or password");

                    System.out.println("Invalid username or password");
                    RequestDispatcher rd = request.getRequestDispatcher("Pages/userlogin.jsp");
                    rd.forward(request, response);
                }
            } else {
                request.setAttribute("msg", "Invalid username or password");

                System.out.println("Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("Pages/userlogin.jsp");
                rd.forward(request, response);
//                response.sendRedirect("Pages/AdminLogin.jsp");
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
