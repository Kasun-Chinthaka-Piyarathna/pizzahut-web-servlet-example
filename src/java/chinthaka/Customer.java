package chinthaka;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

/**
 * Created by chinthaka on 9/12/17.
 */
public class Customer {
    public static String getCustomerId;

    /**
     * @param null
     * return null
     */
    void signUp(){

        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter Your First Name:");
        String fname = scanner.next();
        System.out.println("Enter Your Last Name:");
        String lname = scanner.next();
        System.out.println("Enter Your Address:");
        String address = scanner.next();
        System.out.println("Enter Your Contact Number:");
        String mobile = scanner.next();
        System.out.println(fname+" "+lname+" "+address+" "+mobile);


        String query = " insert into  CustomersNew (fname, lname, address, mobile)"
                + " values (?, ?, ?, ?)";
        try {


                PreparedStatement preparedStmt = JdbcTest1.conn.prepareStatement(query);
                preparedStmt.setString(1,fname);
                preparedStmt.setString(2, lname);
                preparedStmt.setString(3, address);
                preparedStmt.setString(4, mobile);
                preparedStmt.execute();

            }catch (Exception e)
            {
                System.err.println("D'oh! Got an exception!");
                System.err.println(e.getMessage());
            }

        String getCustomerId = " SELECT id FROM CustomersNew WHERE mobile ="+mobile;

        try {
            Statement stmt = JdbcTest1.conn.createStatement();
            ResultSet rs = stmt.executeQuery(getCustomerId);


            while (rs.next()) {
                getCustomerId = rs.getString("id");
                System.out.println(getCustomerId);


            }

        } catch (Exception e) {
            System.err.println("D'oh! Got an exception!");
            System.err.println(e.getMessage());
        }





    }






}
