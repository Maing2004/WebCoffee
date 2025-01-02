package com.example.myservlet;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Product> products = new ArrayList<>();
    private int quantity = 0;

    public List<Product> getProducts() {
        return products;
    }

    public void addProduct(Product product) {
        products.add(product);
        quantity++;
    }

    public int getQuantity() {
        return quantity;
    }
}
