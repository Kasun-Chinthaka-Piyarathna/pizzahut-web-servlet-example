package chinthaka;

import java.util.Scanner;

/**
 * Created by chinthaka on 9/12/17.
 * used Factory Design Patterns and some of oop concepts
 */
public class FactoryPatternDemo {
    /**
     *
     * @param args
     */
    public static void main(String[] args){

        Scanner scn = new Scanner(System.in);

        JdbcTest1 obj = new JdbcTest1();
        obj.checkconnection();

        Customer customer = new Customer();
        customer.signUp();


        System.out.println("Welcome to Pizza Hut");
        System.out.println("Today's MENU");
        System.out.println("Chicken Bacon -->1 || Cheese Lovers -->2 || Devilled Chicken -->3 || Cheese & Tomato -->4 || CheesyOnion -->5");
        System.out.println("Please select your choice");
        String choice = scn.next();




        ShapeFactory shapeFactory = new ShapeFactory();

        //get an object of Circle and call its draw method.
        Pizza shape1 = shapeFactory.getShape(choice);

        //call draw method of Circle
        shape1.draw();


    }


}

class ShapeFactory {

    /**
     *
     * @param shapeType
     * @return Pizza
     */
    //use getShape method to get object of type shape
    public Pizza getShape(String shapeType){
        if(shapeType == null){
            return null;
        }
        if(shapeType.equalsIgnoreCase("1")){
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


        return null;
    }
}

class ChickenBacon implements Pizza {

    /**
     * @param null;
     * return null;
     */
    @Override
    public void draw() {

        System.out.println("You have chosen Chicken Bacon");
        Order order = new Order();
        System.out.println( order.getMenuItemDetails(1) + "\n");
        order.ordernow();
    }
}

class CheeseLovers implements Pizza {

    /**
     * @param null;
     * return null;
     */
    @Override
    public void draw() {
        System.out.println("You have chosen Cheese Lovers");
        Order order = new Order();
        System.out.println( order.getMenuItemDetails(2) + "\n");
        order.ordernow();

    }
}

class DevilledChicken implements Pizza {

    /**
     * @param null;
     * return null;
     */
    @Override
    public void draw() {
        System.out.println("You have chosen Devilled Chicken");
        Order order = new Order();
        System.out.println( order.getMenuItemDetails(3) + "\n");
        order.ordernow();
    }
}

class CheeseTomato implements Pizza {
    /**
     * @param null;
     * return null;
     */
    @Override
    public void draw() {
        System.out.println("You have chosen Cheese Tomato");
        Order order = new Order();
        System.out.println( order.getMenuItemDetails(4) + "\n");
        order.ordernow();
    }
}

class CheesyOnion implements Pizza {
    /**
     * @param null;
     * return null;
     */

    @Override
    public void draw() {
        System.out.println("You have chosen Cheesy Onion");
        Order order = new Order();
        System.out.println( order.getMenuItemDetails(5) + "\n");
        order.ordernow();
    }
}

interface Pizza {
    void draw();
}
