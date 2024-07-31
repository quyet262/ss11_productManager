package com.example.product_manager.service;

import com.example.product_manager.model.Customer;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    private static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer(1, "quyet", "QNgai", "quyet@gmail.com"));
        customers.add(new Customer(2, "Nguyen", "QNam", "Nguyen@gmail.com"));
        customers.add(new Customer(3, "tam", "HN", "Tam@gmail.com"));
        customers.add(new Customer(4, "khoi", "ĐN", "khoi123@gmail.com"));
    }

    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customers);
    }

    @Override
    public void save(Customer customer) {
        customers.add(customer);
    }

    @Override
    public void update(int id, Customer customer) {
        Customer existingCustomer = findById(id);
        if (existingCustomer != null) {
            existingCustomer.setName(customer.getName());
            existingCustomer.setAddress(customer.getAddress());
            existingCustomer.setEmail(customer.getEmail());
        }
    }

    @Override
    public void delete(int id) {
        Customer customer = findById(id);
        if (customer != null) {
            customers.remove(customer);
        }
    }

    @Override
    public Customer findById(int id) {
        for (Customer customer : customers) {
            if (customer.getId() == id) {
                return customer;
            }
        }
        return null;
    }

    @Override
    public List<Customer> findByName(String name) {
        List<Customer> result = new ArrayList<>();
        for (Customer customer : customers) {
            if(customer.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(customer);
            }
        }
        return result;
    }
}
