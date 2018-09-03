package com.kx.service;

import com.kx.dao.DocUserMapper;
import com.kx.pojo.Doctor;
import com.kx.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author kakrot -16 on 2018/9/1 0001.
 * @version 1.0
 */
@Service
public class DocUserServiceImpl implements DocUserService {
    @Resource
    private DocUserMapper docUserMapper;

    @Override
    public Doctor getLogin(Doctor doctor) {
        return docUserMapper.getLogin(doctor);
    }
}
