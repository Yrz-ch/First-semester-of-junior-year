package com.yrz.dao;

import com.yrz.pojo.Customers;
import com.yrz.pojo.Staffs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomerDao {
    int addCustomer(Customers customers);


    int deleteCustomerById(@Param("cid") int id);

    //更新Book
    int updateCustomer(Customers customers);


    Customers queryCustomerById(@Param("cid") int id);

    //查询全部Book,返回list集合
    List<Customers> queryAllCustomer();

    //通过书名查书籍信息

    List<Customers> queryCustomerByName(@Param("cname")String cname);
}
