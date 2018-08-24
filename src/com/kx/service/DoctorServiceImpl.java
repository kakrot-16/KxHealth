package com.kx.service;

import com.kx.dao.DoctorMapper;
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
public class DoctorServiceImpl implements DoctorService {
    @Resource
    private DoctorMapper doctorMapper;
    @Override
    public int insertDoc(Doctor doctor) {
        return doctorMapper.insertDoc(doctor);
    }

    @Override
    public int deleteDoc(int d_id) {
        return doctorMapper.deleteDoc(d_id);
    }

    @Override
    public int updateDoc(Doctor doctor) {
        return doctorMapper.updateDoc(doctor);
    }

    @Override
    public List<Doctor> getDoc(Doctor doctor) {
        return doctorMapper.getDoc(doctor);
    }


    @Override
    public List<Doctor> getDocByOption(Doctor doctor) {
        return doctorMapper.getDocByOption(doctor);
    }
}
