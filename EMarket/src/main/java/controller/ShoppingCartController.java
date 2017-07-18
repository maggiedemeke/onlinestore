package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import model.ShoppingCart;

/**
 * Servlet implementation class ShoppingCartController
 */
@WebServlet("/ShoppingCartController")
public class ShoppingCartController extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("name").equals("addtocart")) {
			ShoppingCart cart = new ShoppingCart();
			int cartId = cart.getCartId();	
			cart.addProduct((Product)request.getSession().getAttribute("aProduct"));
			request.getSession().setAttribute("cartItem", cart);
			request.getRequestDispatcher("/WEB-INF/productdetail.jsp").forward(request, response);
			
		}
		
		if(request.getParameter("name").equals("back")) {
			request.getRequestDispatcher("/WEB-INF/browseandselect.jsp").forward(request, response);
		}
		if(request.getParameter("name").equals("cart")) {
			request.getRequestDispatcher("/WEB-INF/shoppingcart.jsp").forward(request, response);
		}
		
	}

}
