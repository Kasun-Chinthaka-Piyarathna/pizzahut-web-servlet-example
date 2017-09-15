package chinthaka;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

/**
 * Created by chinthaka on 9/15/17.
 */

//Here I have used Encapsulation and Inheritance OOP concept.
public class OrderComplete extends HttpServlet {

    public static Connection conn6;

    /**
     * @param null;
     * return null;
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {



        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn6 = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn6);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while connecting to the db!");
            System.err.println(e);
        }



        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String pizza_item_unit_price=request.getParameter("pizza_item_unit_price");
        int amount=Integer.parseInt(request.getParameter("amount"));


        double totalprice = amount * Double.parseDouble(pizza_item_unit_price);
            System.out.println("Total cost will be " + totalprice);


            String querynew = " insert into  OrderNewCorrected (customer_id,totalprice,menu_id)"
                    + " values (?, ?, ?)";

            try {


                PreparedStatement preparedStmtnew = conn6.prepareStatement(querynew);

                preparedStmtnew.setInt(1, Integer.parseInt(Signup.getCustomerId));
                preparedStmtnew.setDouble(2, totalprice);
                preparedStmtnew.setInt(3,Integer.parseInt(FactoryPatternDemo.choice));
                preparedStmtnew.execute();

            }catch (Exception e)
            {
                System.err.println("Finally Here");
                System.err.println(e.getMessage());
            }
            System.out.println("Order Request has been sent, Please wait..");

        }

}
