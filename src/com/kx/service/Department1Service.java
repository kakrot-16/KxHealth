package com.kx.service;

import com.kx.pojo.Department1;
import com.kx.pojo.Doctor;

import java.util.List;

public interface Department1Service {
	//寻找一级科室的方法(已测)
	List<Department1> getDe1ListById(String id);//张帅  查找以及科室集合
    List<Department1> getDe1List(Department1 department1);
    //增加一级科室的方法（已测）
    int addDe1(Department1 department1);
    //删除一级科室的方法（已测）
    int deletaDe1(int d1_id);
    //更改一级科室信息(如电话，等信息)（已测）
    int updateDe1(Department1 department1);
    //通过医生id  医生所在一级科室  获得 科室ID
    Department1 getTel(Doctor doctor);//张帅
}
