package com.yrz.service;

import com.yrz.dao.CustomerDao;
import com.yrz.pojo.Customers;

import java.util.List;

public class CustomerImpl implements CustomerService{

    private CustomerDao customerDao;

    public void setCustomerDao(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    public int addCustomer(Customers customers) {
        return customerDao.addCustomer(customers);
    }

    public int deleteCustomerById(int id) {
        return customerDao.deleteCustomerById(id);
    }

    public int updateCustomer(Customers customers) {
        return customerDao.updateCustomer(customers);
    }

    public Customers queryCustomerById(int id) {
        return customerDao.queryCustomerById(id);
    }

    public List<Customers> queryAllCustomer() {
        return customerDao.queryAllCustomer();
    }

    public List<Customers> queryCustomerByName(String cname) {
        return customerDao.queryCustomerByName(cname);
    }
}
