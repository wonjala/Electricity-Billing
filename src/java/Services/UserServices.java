/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import Controller.CalcBill;
import Model.login;
import DBConnection.DBConnection;
import Hashing.HashingPassword;
import Model.Bill;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL
 */
public class UserServices {

    public login getUser(String username, String password) {

        login user = null;
        String query = "select * from login where username=? and password=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setString(1, username);
            pstm.setString(2, new HashingPassword().hashPassword(password));
            System.out.println(pstm);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                user = new login();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFull_name(rs.getString("fullname"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));

                System.out.println(user.getUsername() + " " + user.getPassword());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public List<login> getUser() {

        List<login> userlist = new ArrayList<>();
        String query = "select * from login";

        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                login user = new login();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setFull_name(rs.getString("fullname"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));

                System.out.println(user.getUsername() + " " + user.getPassword());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userlist;
    }

    public User getUserBill(int id) {

        User user = new User();
        String query = "SELECT * FROM `bill` LEFT JOIN user_details on bill.user_id = user_details.id where user_details.id=" + id;

        PreparedStatement pstm = new DBConnection().getStatement(query);
        System.out.println("The query: " + pstm);
        try {

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
//                int id, String dueDate, java.sql.Date date, float amount, int unit, String status, int fine
                user.setBill(new Bill(rs.getInt("id"), rs.getString("Date"), rs.getDate("due_date"), 1000, rs.getInt("units"), rs.getString("status"), rs.getInt("fined")));
                user.setId(rs.getInt("user_id"));
                user.setFullname(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setDueDate(rs.getString("due_date"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("Phone"));
                user.setScno(rs.getString("SCNO"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public List<User> getOldBill(int id) {
        List<User> billlist = new ArrayList<>();

        String query = "SELECT * FROM `bill` LEFT JOIN user_details on bill.user_id = user_details.id where user_details.id=" + id;

        PreparedStatement pstm = new DBConnection().getStatement(query);
        System.out.println("The query: " + pstm);
        try {

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                User user = new User();
//                int id, String dueDate, java.sql.Date date, float amount, int unit, String status, int fine
                user.setBill(new Bill(rs.getInt("id"), rs.getString("Date"), rs.getDate("due_date"), 1000, rs.getInt("units"), rs.getString("status"), rs.getInt("fined")));
                user.setId(rs.getInt("user_id"));
                user.setFullname(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setDueDate(rs.getString("due_date"));
                billlist.add(user);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return billlist;
    }

//    public void insertUser(login user) {
//        String query = "insert into login (fullname,username,password,role)"
//                + "values(?,?,?,?)";
//        PreparedStatement pstm = new DBConnection().getStatement(query);
//        try {
//            pstm.setString(1, user.getFullname());
//            pstm.setString(2, user.getUsername());
//            pstm.setString(3, user.getPassword());
//            pstm.setString(4, user.getRole());
//
//            pstm.execute();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
    public void insertUser(User user) {
        String query = "insert into user_details ( name, email ,password ,address, phone,SCNO) values(?,?,?,?,?,?)";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            System.out.println(" \n\n=============\n\n " + user.getName() + " " + user.getLogin().getPassword());
            pstm.setString(1, user.getName());
            pstm.setString(2, user.getLogin().getUsername());
            pstm.setString(3, new HashingPassword().hashPassword(user.getLogin().getPassword()));
            pstm.setString(4, user.getAddress());
            pstm.setString(5, user.getPhone());
            pstm.setString(6, user.getScno());
            System.out.println("hiiiiiiiiiiiiiiiiiiiiiiiiii");
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        query = "insert into login ( username, fullname ,password ,role) values(?,?,?,?)";
        pstm = new DBConnection().getStatement(query);
        try {
            System.out.println(" \n\n=============\n\n " + user.getName() + " " + user.getLogin().getPassword());
            pstm.setString(1, user.getLogin().getUsername());
            pstm.setString(2, user.getName());
            pstm.setString(3, new HashingPassword().hashPassword(user.getLogin().getPassword()));
            pstm.setString(4, "U");
            System.out.println(pstm);
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void MakePayment(int uid, int billid, float amount) {
        String query = "update  bill set status = 1 where id=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {

            pstm.setInt(1, billid);

            System.out.println(pstm);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        query = "insert into payments ( bill_id, user_id ,amount ,date_paid) values(?,?,?,?)";
        pstm = new DBConnection().getStatement(query);
        try {
            pstm.setInt(1, billid);
            pstm.setInt(2, uid);
            pstm.setString(3, String.valueOf(amount));
            pstm.setString(4, LocalDate.now().toString());
            System.out.println(pstm);
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Bill> ViewBill(int uid) {
        List<Bill> billlist = new ArrayList<>();
        String query = "Select * from bill where user_id=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {

            pstm.setInt(1, uid);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
//                int id, String dueDate, java.sql.Date date, float amount, int unit, String status, int fine
                Bill bill = new Bill(rs.getInt("id"), rs.getString("Date"), rs.getDate("due_date"), 1000, rs.getInt("units"), rs.getString("status"), rs.getInt("fined"));
                billlist.add(bill);

            }
        } catch (SQLException ex) {
            Logger.getLogger(UserServices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return billlist;
    }

    public void UpdateUser(int id, User user) {

        String query = "update  user_details set name=?, email=?, password=?,address=?, phone=? where id=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            System.out.println(" \n\n=============\n\n " + user.getName() + " " + user.getLogin().getPassword());
            pstm.setString(1, user.getName());
            pstm.setString(2, user.getLogin().getUsername());
            pstm.setString(3, new HashingPassword().hashPassword(user.getLogin().getPassword()));
            pstm.setString(4, user.getAddress());
            pstm.setString(5, user.getPhone());
            pstm.setInt(6, id);

            System.out.println(pstm);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        query = "update  login set username=?, fullname=?, password=? where id=?";

        pstm = new DBConnection().getStatement(query);
        try {
            System.out.println(" \n\n=============\n\n " + user.getName() + " " + user.getLogin().getPassword());
            pstm.setString(1, user.getLogin().getUsername());
            pstm.setString(2, user.getName());
            pstm.setString(3, new HashingPassword().hashPassword(user.getLogin().getPassword()));
            pstm.setInt(4, id);

            System.out.println(pstm);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void UpdateProfile(int id, User user) {

        String query = "update  user_details set name=?, email=? ,address=?, phone=? where id=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            System.out.println(" \n\n=============\n\n " + user.getName() + " " + user.getLogin().getPassword());
            pstm.setString(1, user.getName());
            pstm.setString(2, user.getLogin().getUsername());
            pstm.setString(4, user.getAddress());
            pstm.setString(5, user.getPhone());
            pstm.setInt(6, id);

            System.out.println(pstm);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        query = "update  login set username=?, fullname=?, password=? where id=?";

        pstm = new DBConnection().getStatement(query);
        try {
            System.out.println(" \n\n=============\n\n " + user.getName() + " " + user.getLogin().getPassword());
            pstm.setString(1, user.getLogin().getUsername());
            pstm.setString(2, user.getName());
            pstm.setString(3, user.getLogin().getPassword());
            pstm.setInt(4, id);

            System.out.println(pstm);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertBill(String username, String month, String unit, String LastDate) {
        try {
            String query = "insert into bill ( user_id, Date ,due_date ,units, status)"
                    + "values(?,?,?,?,?)";
            PreparedStatement pstm = new DBConnection().getStatement(query);

            pstm.setString(1, username);
            pstm.setString(2, month);
            pstm.setString(3, LastDate);
            pstm.setString(4, unit);
            pstm.setBoolean(5, false);
            pstm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CalcBill.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();
        String query = "SELECT * FROM `login` left join user_details on login.id = user_details.id where login.role='U'";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setPhone(rs.getString("email"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("Phone"));
                user.setScno(rs.getString("SCNO"));

                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    public List<User> getPaymentList() {
        List<User> paymentList = new ArrayList<>();
        String query = "SELECT * FROM user_details left join payments on user_details.id = payments.user_id left join bill on bill.id = payments.bill_id where STATUS = 1";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("user_id"));
                user.setName(rs.getString("name"));
                user.setPhone(rs.getString("Phone"));
                user.setScno(rs.getString("SCNO"));
                user.setAmount(rs.getFloat("amount"));
                user.setBill(new Bill(rs.getInt("bill.id"), rs.getString("Date"), rs.getDate("due_date"), 1000, rs.getInt("units"), rs.getString("status"), rs.getInt("fined")));
                user.setDueDate(rs.getString("date_paid"));

                paymentList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return paymentList;
    }

    public List<User> getUnPaidList() {
        List<User> unpayList = new ArrayList<>();
        String query = "SELECT * FROM user_details left join bill on user_details.id = bill.user_id  where STATUS = 0";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("user_id"));
                user.setName(rs.getString("name"));
                user.setPhone(rs.getString("Phone"));
                user.setScno(rs.getString("SCNO"));

                user.setBill(new Bill(rs.getInt("bill.id"), rs.getString("Date"), rs.getDate("due_date"), 1000, rs.getInt("units"), rs.getString("status"), rs.getInt("fined")));

                unpayList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return unpayList;
    }

    public User getAdminList() {
        String query = "SELECT * FROM `login` left join user_details on login.id = user_details.id where login.role='A'";
        System.out.println(query);
        User user = new User();

        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setAddress(rs.getString("address"));
                System.out.println(user.getAddress());
                user.setPhone(rs.getString("Phone"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public void DeleteUser(int id) {

        String query = "delete from  user_details where id=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {

            pstm.setInt(1, id);

            System.out.println(pstm);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void ResetPassword(String newPassword, String email) {
        try {

            String stmt = "Update user_details set password = ? where email = ?";

            PreparedStatement ps = new DBConnection().getStatement(stmt);
            ps.setString(1, new HashingPassword().hashPassword(newPassword));
            ps.setString(2, email);
            ps.executeUpdate();
            System.out.println(ps);
            ps.close();

            String stmt1 = "Update login set password = ? where username = ?";

            PreparedStatement ps1 = new DBConnection().getStatement(stmt1);
            ps1.setString(1, new HashingPassword().hashPassword(newPassword));
            ps1.setString(2, email);
            System.out.println(ps1);
            ps1.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void ResetPassword(String newPassword, int id) {
        try {

            String stmt = "Update user_details set password = ? where id = ?";

            PreparedStatement ps = new DBConnection().getStatement(stmt);
            ps.setString(1, new HashingPassword().hashPassword(newPassword));
            ps.setInt(2, id);
            ps.executeUpdate();

            ps.close();
            String stmt1 = "Update login set password = ? where id = ?";

            PreparedStatement ps1 = new DBConnection().getStatement(stmt1);
            ps1.setString(1, new HashingPassword().hashPassword(newPassword));
            ps1.setInt(2, id);
            System.out.println(ps1);
            ps1.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) {
        try {
            HttpSession session = request.getSession();
            session.invalidate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
