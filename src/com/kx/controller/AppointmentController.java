package com.kx.controller;

import com.alibaba.fastjson.JSON;
import com.kx.dao.AppointmentMapper;
import com.kx.pojo.Appointment;
import com.kx.pojo.Doctor;
import com.kx.service.AppointmentService;
import org.jboss.logging.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
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
        System.out.println("进入添加预约记录============="+appointment.getAp_doc_id()+" "+appointment.getAp_user_id()+"================");
        int result = appointmentService.addAppointment(String.valueOf(ap_user_id),String.valueOf(ap_doc_id));
        System.out.println(result + "-----result----------------------------");
        return result;
    }

}
