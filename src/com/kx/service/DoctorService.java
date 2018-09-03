package com.kx.service;

import com.kx.pojo.Doctor;

import javax.print.Doc;
import java.util.List;

/**doctorservice
 * @author 申静宇
 */
public interface DoctorService {
    // 增加医生的信息的方法
    int insertDoc(Doctor doctor);
    // 删除医生信息的方法
    int deleteDoc(int d_id);
    // 修改医生信息的方法
    int updateDoc(Doctor doctor);
    // 获得医生信息的方法
    List<Doctor> getDoc(Doctor doctor);
    //张帅添加
    List<Doctor> getDocByOption(Doctor doctor);
    // 获取单个医生的放号数量 张帅
    int getD_num(int d_id);
}
