package com.kx.service;

import com.kx.dao.AppointmentMapper;
import com.kx.pojo.Doctor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/22 0022.
 * @version 1.0
 */
@Service
@Transactional
public class AppointmentServiceImpl implements AppointmentService {
    @Resource
    private AppointmentMapper appointmentMapper;
    @Override
    public List<Doctor> getDocList(String h_id, String d1_id) {
        return appointmentMapper.getDocList(h_id,d1_id);
    }

    @Override
    public int addAppointment(String ap_user_id, String ap_doc_id) {
        return appointmentMapper.addAppointment(ap_user_id,ap_doc_id);
    }
}
