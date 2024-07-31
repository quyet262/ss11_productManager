package com.example.product_manager.service;

import com.example.product_manager.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();
    void save(Customer customer);
    void update( int id, Customer customer);
    void delete(int id);
    Customer findById(int id);
    List<Customer> findByName(String name);
}
