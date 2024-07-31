package com.example.product_manager.controller;

import com.example.product_manager.model.Customer;
import com.example.product_manager.service.CustomerService;
import com.example.product_manager.service.CustomerServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "customerServlet", value = "/customers")
public class CustomerServlet extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }
        switch (action) {
            case "create":
                createCustomer(req, resp);
                break;
            case "edit":
                updateCustomer(req, resp);
                break;
            case "delete":
                deleteCustomer(req, resp);
                break;
            default:
                break;
        }
    }

    private void deleteCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = customerService.findById(id);
        if (customer == null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("error-404.jsp");
            dispatcher.forward(req,resp);
        }else {
            customerService.delete(id);
            resp.sendRedirect("/customers");
        }
    }

    private void updateCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String email = req.getParameter("email");

        Customer customer = new Customer(id, name, address, email);
        if (customer == null) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("error-404.jsp");
            dispatcher.forward(req, resp);
        } else {
            customer.setId(id);
            customer.setName(name);
            customer.setAddress(address);
            customer.setEmail(email);
            customerService.update(id, customer);
            resp.sendRedirect("/customers");
        }
    }

    private void createCustomer(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String email = req.getParameter("email");


        Customer customer = new Customer(id, name, address, email);
        customerService.save(customer);
        resp.sendRedirect("/customers");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }
        switch (action) {
            case "create":
                showCreateForm(req, resp);
                break;
            case "edit":
                showEditForm(req, resp);
                break;
            case "delete":
                showDeleteForm(req,resp);
                break;
            case "view":
                viewCustomer(req,resp);
                break;
            case "search":
                searchCustomer(req,resp);
                break;
            default:
                listProducts(req, resp);
                break;
        }
    }

    private void searchCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("search");
        List<Customer> customers = customerService.findByName(name);
        req.setAttribute("customers", customers);
        RequestDispatcher dispatcher = req.getRequestDispatcher("customer/search.jsp");
        dispatcher.forward(req,resp);
    }

    private void viewCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = customerService.findById(id);
        RequestDispatcher dispatcher;
        if (customer == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        }else {
            req.setAttribute("customer", customer);
            dispatcher = req.getRequestDispatcher("customer/view.jsp");
        }
        dispatcher.forward(req,resp);
    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = customerService.findById(id);
        RequestDispatcher dispatcher;
        if (customer == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        }else {
            req.setAttribute("customer", customer);
            dispatcher = req.getRequestDispatcher("customer/delete.jsp");
        }
        dispatcher.forward(req,resp);
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = customerService.findById(id);
        RequestDispatcher dispatcher;
        if (customer == null) {
            dispatcher = req.getRequestDispatcher("error-404.jsp");
        } else {
            req.setAttribute("customer", customer);
            dispatcher = req.getRequestDispatcher("customer/edit.jsp");
        }
        dispatcher.forward(req, resp);
    }

    private void listProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customers = customerService.findAll();
        req.setAttribute("customers", customers);
        RequestDispatcher dispatcher = req.getRequestDispatcher("customer/list.jsp");
        dispatcher.forward(req, resp);
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("customer/create.jsp");
        dispatcher.forward(req, resp);
    }
}
