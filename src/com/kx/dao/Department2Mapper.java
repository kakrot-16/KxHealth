package com.kx.dao;

import com.kx.pojo.Department2;

import java.util.List;

/**
 * 二级科室mapper接口
 * @author 申静宇
 *
 */
public interface Department2Mapper {
    //增加二级科室的方法(已测)
    int addDepartment2(Department2 department2);
    //删除二级科室的方法(已测)
    int deleteDepartment2(int d2_id);
    //修改二级科室的方法(已测)
    int updateDepartment2(Department2 department2);
    //查找二级科室的方法(已测)
    List<Department2> getDepartmentList(Department2 department2);
    //寻找二级科室的方法(已测)
    List<Department2> getDe1ListById(String id);//张帅
    //查找二级科室简介   张帅
    String getInfo(String d2_name);


}
