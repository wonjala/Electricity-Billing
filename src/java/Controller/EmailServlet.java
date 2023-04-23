/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Hashing.HashingPassword;
import Model.User;
import Services.Email;

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
@WebServlet(name = "EmailServlet", urlPatterns = {"/EmailServlet"})
public class EmailServlet extends HttpServlet {

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
        if (page.equalsIgnoreCase("sendOTP")) {
            PrintWriter out = response.getWriter();
                                HttpSession s = request.getSession();

                                System.out.println(s.getAttribute("uid"));
            User user = new UserServices().getUserBill(Integer.parseInt(s.getAttribute("uid").toString()));

            String OTP = (request.getParameter("OTP") != null) ? request.getParameter("OTP") : "0";

            if (Integer.parseInt(OTP) == 853619) {
                RequestDispatcher dispacher = request.getRequestDispatcher("Pages/ResetPassword.jsp");
                dispacher.forward(request, response);

            } else {
                if (user != null ) {

                    System.out.println(user.getPhone());
                    HttpSession hs = request.getSession();
                    hs.setAttribute("EMAIL", request.getParameter("email"));
                    new Email().EmailSpecifier(request.getParameter("email"),"OTP Code","853619");
                    RequestDispatcher dispacher = request.getRequestDispatcher("Pages/EnterOTP.jsp");
                    dispacher.forward(request, response);
                } else {
                    out.println("No user with such email exists");
                    RequestDispatcher dispacher = request.getRequestDispatcher("Pages/userlogin.jsp");
                    dispacher.forward(request, response);
                }
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
