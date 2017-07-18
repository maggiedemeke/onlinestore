package model;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	
	List<Product> products = new ArrayList<Product>();

	public List<Product> read() {
		
		List<Product> prolist = new ArrayList<Product>();
		Product sunglass = new Product("Lotion", 5, 200.0, Catagory.Cloth);
		sunglass.setLink("images/sunglasses.jpg");
		sunglass.setDiscription("this is the trending sunglass");
		prolist.add(sunglass);
		Product book= new Product("book",5, 200.0, Catagory.Book);
		book.setLink("images/images.jpg");
		book.setDiscription("A Sci-fi book you want to  get");
		prolist.add(book);
		Product shoes = new Product("flats", 4, 30.0, Catagory.Cloth);
		shoes.setLink("images/flats.jpg");
		shoes.setDiscription("red shoes size 8");
		prolist.add(shoes);
			
		
		return prolist;
		// TODO Auto-generated method stub
	
	}

		

}
