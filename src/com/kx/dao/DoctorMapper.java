package com.kx.dao;

import com.kx.pojo.Doctor;
import org.jboss.logging.Param;

import java.util.List;

/**
 * 医生mapper接口
 * @author 申
 */
public interface DoctorMapper {
    // 增加医生的信息的方法(已测)
    int insertDoc(Doctor doctor);
    // 删除医生信息的方法(已测)
    int deleteDoc(int d_id);
    // 修改医生信息的方法(已测)
    int updateDoc(Doctor doctor);
   // 获得医生信息的方法(已测)
    List<Doctor> getDoc(Doctor doctor);
    // 通过科室id,医院id 查询医生 张帅添加
    List<Doctor> getDocByOption(Doctor doctor);
}
