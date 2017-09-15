package chinthaka;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

/**
 * Created by chinthaka on 9/14/17.
 */

//Here I have used Encapsulation and Inheritance OOP concept.
public class Signup extends HttpServlet {

    public static Connection conn2;
    public static String getCustomerId;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn2 = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn2);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while connecting to the db!");
            System.err.println(e);
        }


        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String address=request.getParameter("address");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String psw=request.getParameter("psw");
        String psw_repeat=request.getParameter("psw-repeat");





        String query = " insert into  customersignup (fname, lname, address, mobile,email,password)"
                + " values (?, ?, ?, ?,?,?)";
        try {


            PreparedStatement preparedStmt = conn2.prepareStatement(query);
            preparedStmt.setString(1,fname);
            preparedStmt.setString(2, lname);
            preparedStmt.setString(3, address);
            preparedStmt.setString(4, mobile);
            preparedStmt.setString(5, email);
            preparedStmt.setString(6, psw);
            preparedStmt.execute();

        }catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while adding data to CustomersNew table!");
            System.err.println(e.getMessage());
        }

        getCustomerId = " SELECT c_id FROM customersignup WHERE mobile ="+mobile;

        try {
            Statement stmt = conn2.createStatement();
            ResultSet rs = stmt.executeQuery(getCustomerId);


            while (rs.next()) {
                getCustomerId = rs.getString("c_id");
                System.out.println(getCustomerId);


            }

        } catch (Exception e) {
            System.err.println("D'oh! Got an exception while getting id!");
            System.err.println(e.getMessage());
        }




        System.out.println(fname);
        System.out.println(lname);
        System.out.println(address);
        System.out.println(mobile);
        System.out.println(psw);
        System.out.println(psw_repeat);

        response.sendRedirect("/index.jsp");
    }

}