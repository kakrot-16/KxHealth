package com.kx.controller;

import com.kx.dao.Department1Mapper;
import com.kx.dao.HospitalMapper;
import com.kx.dao.OrdersMapper;
import com.kx.pojo.*;
import com.kx.service.Department1Service;
import com.kx.service.DoctorWorkService;
import com.kx.service.HospitalService;
import com.kx.service.NumAndDateService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
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

    //医生Id 医生所在一级科室id 获取医院信息  获得医生的排班情况
    @RequestMapping(value = "/getInfo",method = RequestMethod.GET)
    public String get(Doctor doctor, Model model){
        System.out.println(doctor.getD_id()+"**~~~~~~~~~~~~~~~~~~~~~~"+doctor.getD_department1()+"~~~~~~~~~~~~~~~~~~~~~");
        Hospital hospital = hospitalService.getSingle(doctor);
        DoctorWork doctorWork = doctorWorkService.getSingle(doctor);
        System.out.println(doctorWork.getW_workDate() + "-------------");
        Department1 department1 = department1Service.getTel(doctor);
        List<NumAndDate> list = numAndDateService.getAll(doctor);
        for (NumAndDate numAndDate : list) {
            System.out.println(numAndDate.getNum()+"》》》》》》》》》》》》");
        }
        model.addAttribute("list", list);
        model.addAttribute("department1", department1);//医院电话
        model.addAttribute("hospital", hospital);//医院信息
        model.addAttribute("doctorWork", doctorWork);//医生排版信息
        return "AAADoctorWork";
    }
}
