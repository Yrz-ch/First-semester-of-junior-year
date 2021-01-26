package com.yrz.controller;

import com.yrz.pojo.Books;
import com.yrz.pojo.ProComp;
import com.yrz.pojo.Salary;
import com.yrz.pojo.Staffs;
import com.yrz.service.ProCompService;
import com.yrz.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/proComp")
public class ProCompController {

    @Autowired
    @Qualifier("proCompServiceImpl")
    private ProCompService proCompService;
    @Autowired
    @Qualifier("salaryServiceImpl")
    private SalaryService salaryService;

    @RequestMapping("/allProComp")
    public String list(Model model,int id){
        List<ProComp> list = proCompService.queryProCompById(id);
        System.out.println("sdsd");
        Salary salary = salaryService.querySalaryById(id);

        model.addAttribute("list",list);
        model.addAttribute("salary",salary);

        return "allProComp";
    }

    @RequestMapping("/toAddProComp")
    public String toAddPaper(Model model, int id) {

        model.addAttribute("id",id );
        return "addProComp";
    }

    @RequestMapping("/addProComp")
    public String addPaper(ProComp proComp) {
        System.out.println(proComp);
        proCompService.addProComp(proComp);
        return "redirect:/staff/allStaff";
    }
}
