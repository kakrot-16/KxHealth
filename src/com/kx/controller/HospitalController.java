package com.kx.controller;

import com.kx.dao.HospitalMapper;
import com.kx.pojo.Hospital;
import com.kx.service.HospitalService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/21 0021.  医院contr
 * @version 1.0
 */
@Controller
@RequestMapping("/hospital")
public class HospitalController {

    @Resource
    private HospitalService hospitalService;



    @RequestMapping(value = "/getAll",method = RequestMethod.GET)
    public  @ResponseBody List<Hospital> getAll2( Hospital hospital){
        System.out.println("进入hosital-----------------------------------");
        List<Hospital> hospitalList = hospitalService.getAll(hospital);
        for (Hospital hospital1 : hospitalList) {
            System.out.println(hospital1.getH_name());
        }
        return hospitalList;
    }
}
