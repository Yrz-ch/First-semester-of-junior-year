package com.yrz.dao;


import com.yrz.pojo.Staffs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffDao {

    int addStaff(Staffs staffs);


    int deleteStaffById(@Param("eid") int id);

    //更新Book
    int updateStaff(Staffs staffs);


    Staffs queryStaffById(@Param("eid") int id);

    //查询全部Book,返回list集合
    List<Staffs> queryAllStaff();

    //通过书名查书籍信息

    List<Staffs> queryStaffByName(@Param("ename")String ename);
}
