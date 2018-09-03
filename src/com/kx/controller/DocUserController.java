package com.kx.controller;

import com.kx.pojo.Doctor;
import com.kx.pojo.User;
import com.kx.service.DocUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author kakrot -16 on 2018/9/1 0001.
 * @version 1.0
 */
@Controller
@RequestMapping("/docUser")
public class DocUserController {
    @Resource
    private DocUserService docUserService;

    @RequestMapping("/goLoginJsp")
    public String go(){
        return "AAALogin";
    }
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public @ResponseBody Doctor doLogin(Doctor doctor){
        System.out.println("docUser.login.do@@@@@@@@@@@@" + doctor.getD_code()+doctor.getD_pass());
        Doctor doctor1 = docUserService.getLogin(doctor);
        if(doctor1 == null){
            Doctor doctor2 = new Doctor();
            doctor2.setD_name("N");
            return doctor2;
        }else{
            return doctor1;
        }
    }
}
