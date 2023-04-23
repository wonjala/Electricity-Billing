/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DBConnection.DBConnection;
import Model.User;
import Services.UserServices;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "CalcBill", urlPatterns = {"/CalcBill"})
public class CalcBill extends HttpServlet {

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
        if (page.equalsIgnoreCase("calc")) {

            String username = request.getParameter("username");
            String month = request.getParameter("month");
            String unit = request.getParameter("unit");
            String LastDate = request.getParameter("LastDate");

            new UserServices().insertBill(username, month, unit, LastDate);
            int id = Integer.parseInt(request.getParameter("username"));
            User user = new UserServices().getUserBill(id);
            System.out.println( "\n========================\nUser id: " + user.getId());
                        System.out.println( "\n========================\nUser id: " + user.getAddress());
            System.out.println( "\n========================\nUser id: " + user.getPhone());

            request.setAttribute("user", user);
            RequestDispatcher dispacher = request.getRequestDispatcher("Pages/Calculated.jsp?id=" + username);
            dispacher.include(request, response);

        }
        
         if (page.equalsIgnoreCase("paybill")) {

             System.out.println(request.getParameter("uid"));
             System.out.println(request.getParameter("billid"));
             System.out.println(request.getParameter("amount"));
             
             String uid = request.getParameter("uid");
             String billid = request.getParameter("billid");
             String amount = request.getParameter("amount");
             
             new UserServices().MakePayment(Integer.parseInt(uid),Integer.parseInt(billid), Float.valueOf(amount));
              RequestDispatcher dispacher = request.getRequestDispatcher("PageChange?page=unpaid");
            dispacher.include(request, response);

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
