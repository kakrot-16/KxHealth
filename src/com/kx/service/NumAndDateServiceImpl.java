package com.kx.service;

import com.kx.dao.NumAndDateMapper;
import com.kx.pojo.Doctor;
import com.kx.pojo.NumAndDate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/25 0025.
 * @version 1.0
 */
@Service
public class NumAndDateServiceImpl implements NumAndDateService{

    @Resource
    private NumAndDateMapper numAndDateMapper;
    @Override
    public List<NumAndDate> getAll(Doctor doctor) {
        return numAndDateMapper.getAll(doctor);
    }


}
