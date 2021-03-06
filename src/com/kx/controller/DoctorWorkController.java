package com.kx.controller;

import com.kx.dao.Department1Mapper;
import com.kx.dao.HospitalMapper;
import com.kx.dao.OrdersMapper;
import com.kx.pojo.*;
import com.kx.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/23 0023.
 * @version 1.0
 */
@Controller
@RequestMapping("/doctorWork")
public class DoctorWorkController {
    @Resource
    private DoctorWorkService doctorWorkService;
    @Resource
    private HospitalService hospitalService;
    @Resource
    private Department1Service department1Service;
    @Resource
    private NumAndDateService numAndDateService;
    @Resource
    private DoctorService doctorService;

    //医生Id 医生所在一级科室id 获取医院信息  获得医生的排班情况
    @RequestMapping(value = "/getInfo",method = RequestMethod.GET)
    public String get(Doctor doctor, Model model){
        System.out.println(doctor.getD_id()+"**~~~~~~~~~~~~~~~~~~~~~~"+doctor.getD_department1()+"~~~~~~~~~~~~~~~~~~~~~");
        Hospital hospital = hospitalService.getSingle(doctor);
        int d_num = doctorService.getD_num(doctor.getD_id());
        DoctorWork doctorWork = doctorWorkService.getSingle(doctor);
        System.out.println(doctorWork.getW_workDate() + "-------------");
        Department1 department1 = department1Service.getTel(doctor);
        List<NumAndDate> list = numAndDateService.getAll(doctor);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = Calendar.getInstance();
        String[] timeList = new String[7];
        for (int i = 0; i < 7; i++) {
            Date monday = c.getTime();
            timeList[i] = sdf.format(monday);
            c.add(Calendar.DATE, +1);
        }
        model.addAttribute("d_num", d_num);
        model.addAttribute("timeList", timeList);
        model.addAttribute("list", list);
        model.addAttribute("department1", department1);//医院电话
        model.addAttribute("hospital", hospital);//医院信息
        model.addAttribute("doctorWork", doctorWork);//医生排版信息
        return "AAADoctorWork";
    }
}
