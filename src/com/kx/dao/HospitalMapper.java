package com.kx.dao;

import java.util.List;

import com.kx.pojo.Doctor;
import org.apache.ibatis.annotations.Param;

import com.kx.pojo.Hospital;

public interface HospitalMapper {
	List<Hospital> getAll(Hospital hospital);//模糊查询医院
	
	int saveHospital(Hospital hospital);//添加医院
	
	int deleteHospital(@Param("h_id") int id);//通过ID删除医院
	
	int modifyHospital(Hospital hospital);//修改医院

	Hospital getSingle(Doctor doctor);//根据医生id查询单个医院   张帅添加

}
