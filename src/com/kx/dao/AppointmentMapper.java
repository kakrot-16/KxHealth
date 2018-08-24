package com.kx.dao;

import com.kx.pojo.Appointment;
import com.kx.pojo.Doctor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 张帅 on 2018/8/17 0017.    预约接口
 * @version 1.0
 */
public interface AppointmentMapper {
    //得到所有医生  根据医院id  根据科室id  三级  快速预约
    List<Doctor> getDocList(@Param("h_id") String h_id, @Param("d1_id") String d1_id);

    //添加预约记录
    int addAppointment(@Param("ap_user_id") String ap_user_id ,@Param("ap_doc_id") String ap_doc_id);
}
