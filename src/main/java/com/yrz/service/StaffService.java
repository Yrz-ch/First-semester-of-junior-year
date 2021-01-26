package com.yrz.service;

import com.yrz.pojo.Staffs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffService {
    int addStaff(Staffs staffs);


    int deleteStaffById( int id);

    //更新Book
    int updateStaff(Staffs staffs);


    Staffs queryStaffById( int id);

    //查询全部Book,返回list集合
    List<Staffs> queryAllStaff();

    //通过书名查书籍信息

    List<Staffs> queryStaffByName(String ename);
}
