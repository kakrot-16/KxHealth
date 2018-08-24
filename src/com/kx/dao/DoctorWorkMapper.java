package com.kx.dao;

import com.kx.pojo.Doctor;
import com.kx.pojo.DoctorWork;

import java.util.List;

/**
 * @author kakrot -16 on 2018/8/22 0022.  张帅   医生排班
 * @version 1.0
 */
public interface DoctorWorkMapper {
    //获取医生的排班
    List<DoctorWork> getWork();

    //获取单个医生的排班
    DoctorWork getSingle(Doctor doctor);
}
