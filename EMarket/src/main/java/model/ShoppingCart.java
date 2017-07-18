package model;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
	private static int cartId= 0;
	List<Product>products= new ArrayList<Product>();
	@SuppressWarnings("unused")
	private int count= 0;
	public ShoppingCart() {
	
	}
	public int getCartId() {
		return cartId++;
	}

	public List<Product> getProducts() {
		return products;
		
	}
	public void addProduct(Product prod) {
		products.add(prod);
		count++;
	}
	public void deleteProduct(Product prod) {
		if(products.remove(prod)) {
			count--;
		}
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	

}
