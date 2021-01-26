package com.yrz.service;

import com.yrz.dao.UserDao;
import com.yrz.pojo.Staffs;
import com.yrz.pojo.Users;

import java.util.List;

public class UserServiceImpl implements UserService{

    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public int addUser(Users users) {
        return userDao.addUser(users);
    }

    public int deleteUserById(int id) {
        return userDao.deleteUserById(id);
    }

    public Users queryUserById(int id) {
        return userDao.queryUserById(id);
    }

    public List<Users> queryAllUser() {
        return userDao.queryAllUser();
    }

    public Users queryEidByAccountAndPwd(String account, String pwd) {
        return userDao.queryEidByAccountAndPwd(account,pwd);
    }


}
