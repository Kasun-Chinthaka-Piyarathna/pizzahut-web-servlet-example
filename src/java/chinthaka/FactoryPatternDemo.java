package chinthaka;

import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Scanner;

/**
 * Created by chinthaka on 9/12/17.
 * used Factory Design Patterns and some of oop concepts
 */
//Here I have used Encapsulation OOP concept.
public class FactoryPatternDemo extends HttpServlet {
    public static Connection conn4;
    public static String choice;


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn4 = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn4);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception while connecting to the db!");
            System.err.println(e);
        }



        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        choice=request.getParameter("value");
        System.out.println(choice);

        ShapeFactory shapeFactory = new ShapeFactory();

        //get an object of Circle and call its draw method.
        Pizza shape1 = shapeFactory.getShape(choice);


        response.setContentType("application/json");
        PrintWriter out2 = response.getWriter();
        out2.println(shape1.draw()) ;
        out2.close();

        //call draw method of Circle
//        shape1.draw();
//        System.out.println("Ayyyo salli "+shape1.draw());


    }


}
//Here I have used Encapsulation OOP concept.
class ShapeFactory {

    /**
     * @param shapeType
     * @return Pizza
     */
    //use getShape method to get object of type shape
    public Pizza getShape(String shapeType) {
        if (shapeType == null) {
            return null;
        }
        if (shapeType.equalsIgnoreCase("1")) {
            return new ChickenBacon();

        } else if(shapeType.equalsIgnoreCase("2")){
            return new CheeseLovers();

        } else if(shapeType.equalsIgnoreCase("3")){
            return new DevilledChicken();
        }
        else if(shapeType.equalsIgnoreCase("4")){
            return new CheeseTomato();
        }

        else if(shapeType.equalsIgnoreCase("5")){
            return new CheesyOnion();
        }


//        return null;

        return null;
    }
}
//Here I have used Encapsulation & Inheritance OOP concepts.
class ChickenBacon implements Pizza {

    /**
     * @param null;
     * return null;
     */
    //Here I have used Polymorphism OOP concept.
    @Override
    public JSONObject draw() {


        System.out.println("You have chosen Chicken Bacon");
        Order order = new Order();
         return order.getMenuItemDetails(1) ;
//        order.ordernow();
    }
}
//Here I have used Encapsulation & Inheritance OOP concepts.
class CheeseLovers implements Pizza {

    /**
     * @param null;
     * return null;
     */
    //Here I have used Polymorphism OOP concept.
    @Override
    public JSONObject draw() {
        System.out.println("You have chosen Cheese Lovers");
        Order order = new Order();
      return order.getMenuItemDetails(2);
//        order.ordernow();

    }
}
//Here I have used Encapsulation & Inheritance OOP concepts.
class DevilledChicken implements Pizza {

    /**
     * @param null;
     * return null;
     */
    //Here I have used Polymorphism OOP concept.
    @Override
    public JSONObject draw() {
        System.out.println("You have chosen Devilled Chicken");
        Order order = new Order();
        return  order.getMenuItemDetails(3);
//        order.ordernow();
    }
}
//Here I have used Encapsulation & Inheritance OOP concepts.
class CheeseTomato implements Pizza {
    /**
     * @param null;
     * return null;
     */
    //Here I have used Polymorphism OOP concept.
    @Override
    public JSONObject draw() {
        System.out.println("You have chosen Cheese Tomato");
        Order order = new Order();
      return order.getMenuItemDetails(4);
//        order.ordernow();
    }
}
//Here I have used Encapsulation O& Inheritance OOP concepts.
class CheesyOnion implements Pizza {
    /**
     * @param null;
     * return null;
     */
    //Here I have used Polymorphism OOP concept.
    @Override
    public JSONObject draw() {
        System.out.println("You have chosen Cheesy Onion");
        Order order = new Order();
      return order.getMenuItemDetails(5);
//        order.ordernow();
    }
}
//Here I have used Abstraction OOP concept.
interface Pizza {
    JSONObject draw();
}
