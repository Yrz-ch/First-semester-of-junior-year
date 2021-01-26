package com.yrz.service;

import com.yrz.pojo.Customers;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerService {
    int addCustomer(Customers customers);


    int deleteCustomerById( int id);

    //更新Book
    int updateCustomer(Customers customers);


    Customers queryCustomerById( int id);

    //查询全部Book,返回list集合
    List<Customers> queryAllCustomer();

    //通过书名查书籍信息

    List<Customers> queryCustomerByName(String cname);
}
