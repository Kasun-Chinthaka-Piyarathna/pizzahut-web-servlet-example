package chinthaka;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by chinthaka on 9/12/17.
 */
public class JdbcTest1 {
    public static Connection conn;

    /**
     * @param null
     * return null
     */
     void checkconnection () {
        try
        {
            // Step 1: "Load" the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Step 2: Establish the connection to the database
            String url = "jdbc:mysql://localhost:3306/pizzahut";
            conn = DriverManager.getConnection(url, "root", "password");
            System.out.println(conn);



        }
        catch (Exception e)
        {
            System.err.println("D'oh! Got an exception!");
            System.err.println(e.getMessage());
        }
    }
}
