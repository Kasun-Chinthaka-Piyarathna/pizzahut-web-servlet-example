package chinthaka;

import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
    public JSONObject getMenuItemDetails(int id) {

        String getMenuItemDetails = " SELECT id,name,unit_price,units FROM Menu WHERE id ="+id;

        try {
            Statement stmt = FactoryPatternDemo.conn4.createStatement();
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



        JSONObject menu_Item_details;
        menu_Item_details = new JSONObject();
        try {
            menu_Item_details.put("pizza_item_unit_price",pizza_item_unit_price);
            menu_Item_details.put("pizza_item_available_quantity",pizza_item_available_quantity);
        } catch (JSONException e) {
            e.printStackTrace();
        }




        return menu_Item_details;
    }



}
