package chinthaka;

import org.json.JSONException;
import org.json.JSONObject;

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

//Here I have used Inheritance and Encapsulation OOP concepts.
public class contact extends HttpServlet {


    public static Connection conn5;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn5 = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn5);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while connecting to the db!");
            System.err.println(e);
        }




        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username=request.getParameter("username");
        String useremail=request.getParameter("useremail");
        String usercomment=request.getParameter("usercomment");






        String query5 = " insert into  contact(name, email, comment)"
                + " values (?, ?, ?)";
        try {


            PreparedStatement preparedStmt5 = conn5.prepareStatement(query5);
            preparedStmt5.setString(1,username);
            preparedStmt5.setString(2, useremail);
            preparedStmt5.setString(3, usercomment);

            preparedStmt5.execute();

        }catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while adding data to contact table!");

        }



        System.out.println(username);
        System.out.println(useremail);
        System.out.println(usercomment);


        response.sendRedirect("/index.jsp");




    }

}