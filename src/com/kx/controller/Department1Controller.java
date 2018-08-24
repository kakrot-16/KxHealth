package com.kx.controller;

import com.kx.dao.Department1Mapper;
import com.kx.pojo.Department1;
import com.kx.service.Department1Service;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/21 0021.  一级科室
 * @version 1.0
 */
@Controller
@RequestMapping("/department1")
public class Department1Controller {
    @Resource
    private Department1Service department1Service;

    @RequestMapping(value = "/getAll",method = RequestMethod.GET)
    public @ResponseBody List<Department1> getAll( String id){
        System.out.println("department1Mapper------------------------------------"+id);
        List<Department1> department1List = department1Service.getDe1ListById(id);
        for (Department1 department1 : department1List) {
            System.out.println(department1.getD1_name());
        }
        return  department1List;
    }
}
