package com.yrz.service;

import com.yrz.dao.SalaryDao;
import com.yrz.pojo.Salary;

public class SalaryServiceImpl implements SalaryService{

    private SalaryDao salaryDao;

    public void setSalaryDao(SalaryDao salaryDao) {
        this.salaryDao = salaryDao;
    }

    public Salary querySalaryById(int id) {
        return salaryDao.querySalaryById(id);
    }
}
