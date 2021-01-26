package com.yrz.dao;

import com.yrz.pojo.Staffs;
import com.yrz.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    int addUser(Users users);


    int deleteUserById(@Param("eid") int id);


    Users queryUserById(@Param("eid") int id);

    //查询全部Book,返回list集合
    List<Users> queryAllUser();

    Users queryEidByAccountAndPwd(@Param("account")String account,@Param("pwd")String pwd);

    //通过书名查书籍信息


}
