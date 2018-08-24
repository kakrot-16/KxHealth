package com.kx.service;
/**
 * 管理员接口
 * @author 李胜杰
 *
 */
import org.apache.ibatis.annotations.Param;

import com.kx.pojo.Manager;

public interface ManagerService {

Manager login(@Param("m_Code") String m_Code, @Param("m_Password") String m_Password);//管理员登录
	
	int register(Manager manager);//管理员注册
	
	Manager repetition(@Param("m_Code") String m_Code);//注册时判断是否账号重复
}
