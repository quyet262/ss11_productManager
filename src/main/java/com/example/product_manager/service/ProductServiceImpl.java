package com.example.product_manager.service;

import com.example.product_manager.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "iPhone", 999.99, "Smartphone", "Apple"));
        products.add(new Product(2, "Galaxy", 899.99, "Smartphone", "Samsung"));
        products.add(new Product(3, "Pixel", 799.99, "Smartphone", "Google"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products);
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public void update(int id, Product product) {
        Product existingProduct = findById(id);
        if (existingProduct != null) {
            existingProduct.setName(product.getName());
            existingProduct.setPrice(product.getPrice());
            existingProduct.setDescription(product.getDescription());
            existingProduct.setManufacturer(product.getManufacturer());
        }
    }

    @Override
    public void delete(int id) {
        Product product = findById(id);
        if (product != null) {
            products.remove(product);
        }
    }

    @Override
    public Product findById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }
}
