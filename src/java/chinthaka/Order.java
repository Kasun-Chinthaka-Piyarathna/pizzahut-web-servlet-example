package chinthaka;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

/**
 * Created by chinthaka on 9/12/17.
 */
public class Order {

    private String menu_Item_details;
    private String pizza_item_name;
    private String pizza_item_unit_price;
    private String pizza_item_available_quantity;
    private Double totalprice;
    private String pizza_item_id;

    /**
     *
     * @param id
     * @return String menu_Item_details
     */
    public String getMenuItemDetails(int id) {

        String getMenuItemDetails = " SELECT id,name,unit_price,units FROM Menu WHERE id ="+id;

        try {
            Statement stmt = JdbcTest1.conn.createStatement();
            ResultSet rs = stmt.executeQuery(getMenuItemDetails);


            while (rs.next()) {
                menu_Item_details = rs.getString("id")+" "+ rs.getString("name") + " " + "unit-price-->" + rs.getString("unit_price") + " " + "available_quantity-->" + rs.getString("units");
                pizza_item_name = rs.getString("name");
                pizza_item_id = rs.getString("id");
                pizza_item_unit_price = rs.getString("unit_price");
                pizza_item_available_quantity = rs.getString("units");
            }

        } catch (Exception e) {
            System.err.println("D'oh! Got an exception!");
            System.err.println(e.getMessage());
        }
        return menu_Item_details;
    }

    /**
     * @param null;
     * return null;
     */
    public void ordernow(){
        System.out.println("Do you want to order now");
        System.out.println("Yes --> 1 || No --> 2");
        String opinion = new Scanner(System.in).next();
        if(opinion.equals("1")){
            System.out.println("Nice! You are in a process to order");
            System.out.println("What amount of pizza do you want??");
            int amount = new Scanner(System.in).nextInt();
            System.out.println("You are going to order "+amount);
            totalprice = amount * Double.parseDouble(pizza_item_unit_price);
            System.out.println("Total cost will be " + totalprice);


            String querynew = " insert into  OrderNewCorrected (customer_id,totalprice,menu_id)"
                    + " values (?, ?, ?)";

            try {


                PreparedStatement preparedStmtnew = JdbcTest1.conn.prepareStatement(querynew);

                preparedStmtnew.setInt(1, 10);
//                System.out.println(Integer.parseInt(Customer.getCustomerId));
                preparedStmtnew.setDouble(2, 1300.00);
                preparedStmtnew.setInt(3,11);
//                preparedStmtnew.setInt(3, Integer.parseInt(pizza_item_id));
//                System.out.println(Integer.parseInt(pizza_item_id));
                preparedStmtnew.execute();

            }catch (Exception e)
            {
                System.err.println("Finally Here");
                System.err.println(e.getMessage());
            }
            System.out.println("Order Request has been sent, Please wait..");

        }
    }
}
