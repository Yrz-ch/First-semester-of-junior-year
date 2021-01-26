package com.yrz.controller;

import com.yrz.pojo.Books;
import com.yrz.pojo.Staffs;
import com.yrz.service.BookService;
import com.yrz.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
@RequestMapping("/staff")
public class StaffController {
    @Autowired
    @Qualifier("staffServiceImpl")
    private StaffService staffService;

    @RequestMapping("/allStaff")
    public String list(Model model){
        List<Staffs> list = staffService.queryAllStaff();
        model.addAttribute("list",list);
        return "allStaff";
    }

    @RequestMapping("/toAddStaff")
    public String toAddPaper() {
        return "addStaff";
    }

    @RequestMapping("/addStaff")
    public String addPaper(Staffs staffs) {
        System.out.println(staffs);
        staffService.addStaff(staffs);
        return "redirect:/staff/allStaff";
    }

    @RequestMapping("/toUpdateStaff")
    public String toUpdateBook(Model model, int id) {
        Staffs staffs = staffService.queryStaffById(id);
        System.out.println(staffs);
        model.addAttribute("staff",staffs );
        return "updateStaff";
    }

    @RequestMapping("/updateStaff")
    public String updateBook(Model model, Staffs staff) {
        System.out.println(staff);
        staffService.updateStaff(staff);
//        Staffs staffs = staffService.queryStaffById(staff.getEid());
//        model.addAttribute("staffs", staffs);
        return "redirect:/staff/allStaff";
    }

    @RequestMapping("/del")
    public String deleteBook(int id) {

        staffService.deleteStaffById(id);
        return "redirect:/staff/allStaff";
    }

    @RequestMapping("/queryStaff")
    public String queryBook(String queryStaffName ,Model model){
        List<Staffs> list = staffService.queryStaffByName(queryStaffName);

        if(queryStaffName==null||list.isEmpty()) {
            list = staffService.queryAllStaff();
            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);
        return "allStaff";
    }
}
