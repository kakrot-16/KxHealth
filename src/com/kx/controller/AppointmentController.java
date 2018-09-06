package com.kx.controller;

import com.kx.pojo.Appointment;
import com.kx.pojo.Doctor;
import com.kx.service.AppointmentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.WebParam;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/20 0020.    预约
 * @version 1.0
 */
@Controller
@RequestMapping("/appointment")
public class AppointmentController {
    @Resource
    private AppointmentService appointmentService;

    @RequestMapping(value = "/getDocList" ,method = RequestMethod.POST)
    public String getDocList(String h_id, String d1_id, Model model ){
        List<Doctor> doctorList = appointmentService.getDocList(h_id, d1_id);
        model.addAttribute("doctorList",doctorList);
        return "show";
    }


    @RequestMapping("/add")
    public @ResponseBody int addAppointment(Appointment appointment){
        int ap_user_id = appointment.getAp_user_id();
        int ap_doc_id = appointment.getAp_doc_id();
        int num = appointmentService.getNoNum(String.valueOf(ap_user_id));
        System.out.println(num+"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        int result = 0;
        if(num > 3){
            return 233;
        }else {
            System.out.println("进入添加预约记录=============" + appointment.getAp_doc_id() + " " + appointment.getAp_user_id() + "================");
            result = appointmentService.addAppointment(String.valueOf(ap_user_id), String.valueOf(ap_doc_id));
            System.out.println(result + "-----result----------------------------");
            return result;
        }
    }

    @RequestMapping("/getNo")
    //查询预约未完成的记录(预约对象)   可以根据id 查询个人(用户自己操作)
    public @ResponseBody List<Appointment> getNo(String ap_user_id){
        List<Appointment> appointmentList = appointmentService.getNo(ap_user_id);
        return  appointmentList;
    }

    //根据用户id查询用户的所有订单
    @RequestMapping("/getApp")
    public String get(String u_id,Model model){
        System.out.println("进入appointment>>>>>>>>>>>>" + u_id);
        List<Appointment> appointmentList = appointmentService.getAppointmentByUserId(u_id);
        model.addAttribute("appointmentList", appointmentList);
        return "AAAShowApp";
    }


}
