package com.yrz.controller;

import com.yrz.pojo.Staffs;
import com.yrz.pojo.Users;
import com.yrz.service.StaffService;
import com.yrz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller()
@RequestMapping("/user")
public class UserController {
    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;
    @Autowired
    @Qualifier("staffServiceImpl")
    private StaffService staffService;
    //跳转到登陆页面
    @RequestMapping("/jumplogin")
    public String jumpLogin() throws Exception {
        return "login";
    }

    //跳转到成功页面
    @RequestMapping("/jumpSuccess")
    public String jumpSuccess() throws Exception {
        return "success";
    }

    //登陆提交
    @RequestMapping("/login")
    public String login(HttpSession session, String account, String pwd) throws Exception {
        // 向session记录用户身份信息


        Users users = userService.queryEidByAccountAndPwd(account, pwd);


        session.setAttribute("user", users);
        session.setAttribute("id",users.getEid());
        String power = Integer.toString(users.getPower());
        session.setAttribute("power", power);
//
        if(users!=null) {
            if(power.equals("1")) {
                System.out.println(power);
                return "success";
            }
            else if(power.equals("4")){
                System.out.println(power);

                return "success2";

            }
            else{
                System.out.println(power);

                return "success3";

            }
        }
        return "login";
    }

    //退出登陆
    @RequestMapping("logout")
    public String logout(HttpSession session) throws Exception {
        // session 过期
        session.invalidate();
        return "login";
    }

    @RequestMapping("/toAddUser")
    public String toAddPaper() {
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(  Users users){
        Staffs staffs = staffService.queryStaffById(users.getEid());

        users.setPower(staffs.getPower());
        userService.addUser(users);

        return "redirect:/user/allUser";
    }

    @RequestMapping("/allUser")
    public String allUser(Model model ){
        List<Users> list = userService.queryAllUser();
        model.addAttribute("list",list);
        return "allUser";
    }

    @RequestMapping("/del")
    public String deleteBook(int id) {

        userService.deleteUserById(id);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/queryUser")
    public String queryBook(int eid ,Model model){
        Users users = userService.queryUserById(eid);
        List<Users> list= new ArrayList<Users>();
        list.add(users);
        if(eid==0) {

            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);
        return "allUser";
    }
}
