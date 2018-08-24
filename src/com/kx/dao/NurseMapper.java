package com.kx.dao;
/**
 * 护士方法类
 * 
 * 李胜杰
 */

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kx.pojo.Nurse;

public interface NurseMapper {
	
	List<Nurse> getAll(Nurse nurse);//模糊查询护士
	
	int saveNurse(Nurse nurse);//添加护士
	
	int deleteNurse(@Param("n_id") int id);//通过ID删除护士
	
	int modifyNurse(Nurse nurse);//修改护士
}
