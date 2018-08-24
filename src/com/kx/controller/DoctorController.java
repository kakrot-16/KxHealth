package com.kx.controller;

import com.kx.pojo.Doctor;
import com.kx.service.DoctorService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/22 0022.
 * @version 1.0
 */
@Controller
@RequestMapping("/doctor")
public class DoctorController {
    @Resource
    private DoctorService doctorService;

    @RequestMapping("/getDocByOption")
    public @ResponseBody List<Doctor> getDoc(Doctor doctor){
        System.out.println("进入了================"+doctor.getD_type());
        List<Doctor> doctorList = doctorService.getDocByOption(doctor);
        for (Doctor doctor1 : doctorList) {
            System.out.println(doctor1.getD_intro()+"++++++++++");
        }
        return doctorList;
    }



}
