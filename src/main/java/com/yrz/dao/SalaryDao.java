package com.yrz.dao;

import com.yrz.pojo.ProComp;
import com.yrz.pojo.Salary;
import org.apache.ibatis.annotations.Param;

public interface SalaryDao {
    Salary querySalaryById(@Param("eid") int id);
}
