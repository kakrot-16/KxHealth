package com.kx.service;

import com.kx.pojo.Doctor;
import com.kx.pojo.NumAndDate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/25 0025.
 * @version 1.0
 */
public interface NumAndDateService {
    //查看排班状态以及剩余号码数量
    List<NumAndDate> getAll(Doctor doctor);
}
