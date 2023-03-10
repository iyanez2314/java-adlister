package Controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Controllers.PizzaOrder", value = "/pizza-order")
public class PizzaOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getRequestDispatcher("/pizza-order-page.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pep = request.getParameter("pepperoni");
        String crustSize = request.getParameter("crust-size");
        String sauceType = request.getParameter("sauce");
        String sizeOfPizza = request.getParameter("size");
        String address = request.getParameter("address");

        System.out.println("Crust Size: " + crustSize);
        System.out.println("sauceType: " + sauceType);
        System.out.println("Size of pizza: " + sizeOfPizza);

        String[] toppings = request.getParameterValues("toppings on the pizza are: ");
        if(toppings != null && toppings.length > 0){
            System.out.println("Toppings: ");
            for(String topping: toppings){
                System.out.println(topping);
            }
        }
        System.out.println("Order is going to: " + address);
    }
}


