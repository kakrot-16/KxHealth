package com.kx.service;

import com.kx.pojo.Appointment;
import com.kx.pojo.Doctor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author kakrot -16 on 2018/8/21 0021.
 * @version 1.0
 */
public interface AppointmentService {
    //得到所有医生  根据医院id  根据科室id  三级  快速预约
    List<Doctor> getDocList(@Param("h_id") String h_id, @Param("d1_id") String d1_id);

    //添加预约记录
    int addAppointment(String ap_user_id, String ap_doc_id);
}
