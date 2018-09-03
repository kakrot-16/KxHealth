package com.kx.dao;

import com.kx.pojo.Doctor;
import com.kx.pojo.User;

import javax.print.Doc;

/**
 * @author kakrot -16 on 2018/9/1 0001.
 * @version 1.0
 */
public interface DocUserMapper {
    Doctor getLogin(Doctor doctor);
}
