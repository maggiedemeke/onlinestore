package model;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	
	List<Product> products = new ArrayList<Product>();

	public List<Product> read() {
		
		List<Product> prolist = new ArrayList<Product>();
		Product sunglass = new Product("Lotion", 5, 200.0, Catagory.Cloth);
		sunglass.setLink("/images/sunglasses.jpg");
		prolist.add(sunglass);
		Product book= new Product("book",5, 200.0, Catagory.Book);
		book.setLink("/images/images.jpg");
		prolist.add(book);
		Product shoes = new Product("flats", 4, 30.0, Catagory.Cloth);
		shoes.setLink("/images/flats.jpg");
		prolist.add(shoes);
			
		
		return prolist;
		// TODO Auto-generated method stub
	
	}

		

}
