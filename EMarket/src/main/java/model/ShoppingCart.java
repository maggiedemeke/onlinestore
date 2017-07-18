package model;

import java.util.List;

public class ShoppingCart {
	private static int cartId= 0;
	List<Product>products;
	public ShoppingCart() {
	
	}
	public int getCartId() {
		return cartId++;
	}

	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	

}
