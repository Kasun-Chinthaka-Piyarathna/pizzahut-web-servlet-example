package chinthaka;

import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by chinthaka on 9/14/17.
 */

//request.getRequestDispatcher("/WEB-INF/hello.jsp").forward(request, response);
//Here I have used Encapsulation and Inheritance OOP concept.
public class Signin extends HttpServlet {


    public static Connection conn3;


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn3 = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn3);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while connecting to the db!");
            System.err.println(e);
        }




        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String siusername=request.getParameter("username");
        String sipassword=request.getParameter("password");



        String getCustomerIdnew = " SELECT c_id FROM customersignup WHERE email ="+"'"+siusername+"'";

        try {
            Statement stmt2 =conn3.createStatement();
            ResultSet rs2 = stmt2.executeQuery(getCustomerIdnew);


            while (rs2.next()) {
                getCustomerIdnew = rs2.getString("c_id");
                System.out.println(getCustomerIdnew);


            }

        } catch (Exception e) {
            System.err.println("D'oh! Got an exception while getting id!");
            System.err.println(e.getMessage());
        }

        JSONObject cid = new JSONObject();
        try {
            cid.put("c_id",getCustomerIdnew);
        } catch (JSONException e) {
            e.printStackTrace();
        }


//        out.close();
        System.out.println(siusername);
        System.out.println(sipassword);





//        response.setContentType("application/json");
//        PrintWriter out3 = response.getWriter();
//        out3.println(cid) ;
        response.sendRedirect("/index.jsp");
//        out3.close();



    }

}