package com.yrz.controller;

import com.yrz.pojo.Customers;
import com.yrz.pojo.Staffs;
import com.yrz.service.CustomerImpl;
import com.yrz.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Customer")
public class CustomerController {

    @Autowired
    @Qualifier("customerServiceImpl")
    private CustomerService customerService;

    @RequestMapping("/allCustomer")
    public String list(Model model){
        List<Customers> list = customerService.queryAllCustomer();
        model.addAttribute("list",list);
        return "allCustomer";
    }

    @RequestMapping("/toAddCustomer")
    public String toAddPaper() {
        return "addCustomer";
    }

    @RequestMapping("/addCustomer")
    public String addPaper(Customers customers) {
        System.out.println(customers);
        customerService.addCustomer(customers);
        return "redirect:/Customer/allCustomer";
    }

    @RequestMapping("/toUpdateCustomer")
    public String toUpdateBook(Model model, int id) {
        Customers customers = customerService.queryCustomerById(id);

        model.addAttribute("customer",customers );
        return "updateCustomer";
    }

    @RequestMapping("/updateCustomer")
    public String updateBook(Model model, Customers customer) {
        System.out.println(customer);
        customerService.updateCustomer(customer);
//        Staffs staffs = staffService.queryStaffById(staff.getEid());
//        model.addAttribute("staffs", staffs);
        return "redirect:/Customer/allCustomer";
    }

    @RequestMapping("/del")
    public String deleteBook(int id) {

        customerService.deleteCustomerById(id);
        return "redirect:/Customer/allCustomer";
    }

    @RequestMapping("/queryCustomer")
    public String queryBook(String queryCustomerName ,Model model){
        List<Customers> list = customerService.queryCustomerByName(queryCustomerName);

        if(queryCustomerName==null||list.isEmpty()) {
            list = customerService.queryAllCustomer();
            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);
        return "allCustomer";
    }

}
