package com.yrz.controller;

import com.yrz.pojo.Salary;
import com.yrz.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/salary")
public class SalaryController {

    @Autowired
    @Qualifier("salaryServiceImpl")
   private SalaryService salaryService;

    @RequestMapping("/showSalary")
    public String showSalary(int id, Model model){
        Salary salary = salaryService.querySalaryById(id);
        model.addAttribute("salary",salary);
        return "/proComp/";
    }
}
