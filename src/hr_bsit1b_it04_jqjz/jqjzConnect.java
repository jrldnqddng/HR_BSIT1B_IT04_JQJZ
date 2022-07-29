/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hr_bsit1b_it04_jqjz;
import com.mysql.jdbc.Driver;
import java.sql.*;
/**
 *
 * @author JLZapanta;
 */
public class jqjzConnect {
    //Create object for connection class
    private Connection connectDB;

    public jqjzConnect() throws SQLException{
        makeConnection();
     }

    public Connection makeConnection() throws SQLException {
        if (connectDB == null) {
            new Driver();
            //connect to MySQL Database
            connectDB = DriverManager.getConnection(
            "jdbc:mysql://localhost/hr_bsit1b_it04_jqjz",
            "root",
            "123456");
        }
    return connectDB;
    }
    
    public static void main(String args[]) {
        try {
            jqjzConnect c = new jqjzConnect();
            System.out.println("Connection established");
        }
        catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Connection Failure");
        }
    }
}