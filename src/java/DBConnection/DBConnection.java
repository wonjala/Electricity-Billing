/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBConnection;

/**
 *
 * @author DELL
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {

    Connection con = null;

    public DBConnection() {
        try {

            //load the Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            String DB_URL = "jdbc:mysql://localhost:3306/ElectrictyBilling";
            String name = "root";
            String password = "";

            //Establish Connection
            this.con = DriverManager.getConnection(DB_URL, name, password);

            System.out.println("Database Connected !!! ");


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
    }

    public PreparedStatement getStatement(String query) {

        PreparedStatement pstm = null;

        try {
            pstm = con.prepareStatement(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pstm;
    }
}

