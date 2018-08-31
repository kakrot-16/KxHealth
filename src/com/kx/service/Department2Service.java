package com.kx.service;

import com.kx.pojo.Department2;

import java.util.List;

public interface Department2Service {
    //增加二级科室的方法
    int addDepartment2(Department2 department2);
    //删除二级科室的方法
    int deleteDepartment2(int d2_id);
    //修改二级科室的方法
    int updateDepartment2(Department2 department2);
    //查找二级科室的方法
    List<Department2> getDepartmentList(Department2 department2);
    //查找二级科室  张帅
    List<Department2> getDe1ListById(String id);
    //查找二级科室简介   张帅
    String getInfo(String d2_name);
}
