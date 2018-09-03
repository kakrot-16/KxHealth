package com.kx.controller;

import com.kx.pojo.Department2;
import com.kx.service.Department2Service;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/27 0027.
 * @version 1.0
 */
@Controller
@RequestMapping("/department2")
public class Department2Controller {
    @Resource
    private Department2Service department2Service;

    @RequestMapping(value = "/getAll",method = RequestMethod.POST)
    public @ResponseBody List<Department2> getAll(String id){
        System.out.println("department2Mapper------------------------------------"+id);
        List<Department2> department2List = department2Service.getDe1ListById(id);
        return  department2List;
    }

    @RequestMapping(value="/getInfo",produces={"text/html;charset=UTF-8;"})
    public @ResponseBody String getInfo(String d2_id){
        System.out.println("d2@@@@@@@@@@@@@@@@@@@@@@@@@@" + d2_id);
        String info = department2Service.getInfo(d2_id);
        System.out.println("info`````````````"+info);
        return  info;
    }

}
