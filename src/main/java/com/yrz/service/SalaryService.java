package com.yrz.service;

import com.yrz.pojo.Salary;
import org.apache.ibatis.annotations.Param;

public interface SalaryService {
    Salary querySalaryById( int id);

}
