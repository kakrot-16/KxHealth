package com.kx.dao;

import java.util.List;


import com.kx.pojo.Nurseorder;

/**
 * 护士陪诊订单接口类
 * @author 李胜杰
 *
 */
public interface NurseorderMapper {
	
	List<Nurseorder> getAll(Nurseorder nurseorder);//查询全部订单
	
	int modifyNurseorder(Nurseorder nurseorder);//修改订单
	
	int saveNurseorder(Nurseorder nurseorder);//添加订单
	
	
}

