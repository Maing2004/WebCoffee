package com.example.myservlet;

import java.util.ArrayList;
import java.util.List;

import com.example.myservlet.Product;
import com.example.myservlet.ProductDAO;

public class ProductDAO {
	private static ProductDAO instance;
	private static List<Product> data = new ArrayList<>();
	static {
		data.add(new Product(1,"Cà phê", 250.00f ));
		data.add(new Product(2,"Trà sữa", 25.00f ));
	}
	private ProductDAO() {
		
	}
	public static ProductDAO getInstance() {
		if(instance == null) {
			instance = new ProductDAO();
		}
		return instance;
	}
	public List <Product> listAll(){
		return new ArrayList<Product>(data);
	}
	public int add(Product product) {
		int newId = data.size()+1;
		product.setId(newId);
		data.add(product);
		return newId;
	}
	
	public Product get(int id) {
		Product productToFind = new Product(id);
		int index = data.indexOf(productToFind);
		if(index >= 0) {
			return data.get(index);
		}
		return null;
	}
	public boolean update (Product product) {
		int index = data.indexOf(product);
		if(index >= 0) {
			return true;
		}
		return false;
	}
	public boolean delete (int id) {
		Product productToFind = new Product(id);
		int index = data.indexOf(productToFind);
		if(index >= 0) {
			 data.remove(index);
			 return true;
		}
		return false;
	}
}
