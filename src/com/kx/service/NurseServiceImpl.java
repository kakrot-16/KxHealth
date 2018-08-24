package com.kx.service;
/**
 * 护士方法实现类
 * 李胜杰
 */

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kx.dao.NurseMapper;
import com.kx.pojo.Nurse;
@Service
public class NurseServiceImpl implements NurseService{
	@Resource
	private NurseMapper nurseMapper;
	@Override
	public List<Nurse> getAll(Nurse nurse) {
		// TODO Auto-generated method stub
		return nurseMapper.getAll(nurse);
	}

	@Override
	public int saveNurse(Nurse nurse) {
		// TODO Auto-generated method stub
		return nurseMapper.saveNurse(nurse);
	}

	@Override
	public int deleteNurse(int id) {
		// TODO Auto-generated method stub
		return nurseMapper.deleteNurse(id);
	}

	@Override
	public int modifyNurse(Nurse nurse) {
		// TODO Auto-generated method stub
		return nurseMapper.modifyNurse(nurse);
	}

}
