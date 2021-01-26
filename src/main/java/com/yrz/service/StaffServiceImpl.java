package com.yrz.service;

import com.yrz.dao.BookDao;
import com.yrz.dao.StaffDao;
import com.yrz.pojo.Staffs;

import java.util.List;

public class StaffServiceImpl implements StaffService{

    private StaffDao staffDao;

    //调用dao层的操作，设置一个set接口，方便Spring管理


    public void setStaffDao(StaffDao staffDao) {
        this.staffDao = staffDao;
    }

    public int addStaff(Staffs staffs) {
        return staffDao.addStaff(staffs);
    }

    public int deleteStaffById(int id) {
        return staffDao.deleteStaffById(id);
    }

    public int updateStaff(Staffs staffs) {
        return staffDao.updateStaff(staffs);
    }

    public Staffs queryStaffById(int id) {
        return staffDao.queryStaffById(id);
    }

    public List<Staffs> queryAllStaff() {
        return staffDao.queryAllStaff();
    }

    public List<Staffs> queryStaffByName(String ename) {
        return staffDao.queryStaffByName(ename);
    }
}
