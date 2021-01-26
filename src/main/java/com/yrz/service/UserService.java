package com.yrz.service;

import com.yrz.dao.UserDao;
import com.yrz.pojo.Staffs;
import com.yrz.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    int addUser(Users users);


    int deleteUserById( int id);


    Users queryUserById( int id);

    //查询全部Book,返回list集合
    List<Users> queryAllUser();
    Users queryEidByAccountAndPwd(String account,String pwd);
}
