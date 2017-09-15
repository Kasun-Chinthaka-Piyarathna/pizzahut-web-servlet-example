package chinthaka;

/**
 * Created by chinthaka on 9/13/17.
 */
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;


//Here I have used Encapsulation and Inheritance OOP concept.
public class Register extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String n=request.getParameter("userName");
        String p=request.getParameter("userEmail");
        String e=request.getParameter("userComment");

        System.out.println(n);
        System.out.println(p);
        System.out.println(e);
    }

}