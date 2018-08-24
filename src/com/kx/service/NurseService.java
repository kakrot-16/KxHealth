package com.kx.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kx.pojo.Nurse;

/**
 * /**
 * 护士方法接口类
 * 
 * 李胜杰
 */

public interface NurseService {
	
	List<Nurse> getAll(Nurse nurse);//模糊查询护士
	
	int saveNurse(Nurse nurse);//添加护士
	
	int deleteNurse(int id);//通过ID删除护士
	
	int modifyNurse(Nurse nurse);//修改护士
}
