package com.kx.service;

import com.kx.dao.DoctorMapper;
import com.kx.dao.DoctorWorkMapper;
import com.kx.pojo.Doctor;
import com.kx.pojo.DoctorWork;
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
public class DoctorWorkServiceImpl implements DoctorWorkService {
    @Resource
    private DoctorWorkMapper doctorWorkMapper;


    @Override
    public List<DoctorWork> getWork() {
        return doctorWorkMapper.getWork();
    }

    @Override
    public DoctorWork getSingle(Doctor doctor) {
        return doctorWorkMapper.getSingle(doctor);
    }

}
