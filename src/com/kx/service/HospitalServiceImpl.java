package com.kx.service;

import java.util.List;

import javax.annotation.Resource;

import com.kx.pojo.Doctor;
import org.springframework.stereotype.Service;

import com.kx.dao.HospitalMapper;
import com.kx.pojo.Hospital;
@Service
public class HospitalServiceImpl implements HospitalService{
	@Resource
	private HospitalMapper hospitalMapper;
	@Override
	public List<Hospital> getAll(Hospital hospital) {
		// TODO Auto-generated method stub
		return hospitalMapper.getAll(hospital);
	}

	@Override
	public int saveHospital(Hospital hospital) {
		// TODO Auto-generated method stub
		return hospitalMapper.saveHospital(hospital);
	}

	@Override
	public int deleteHospital(int id) {
		// TODO Auto-generated method stub
		return hospitalMapper.deleteHospital(id);
	}

	@Override
	public int modifyHospital(Hospital hospital) {
		// TODO Auto-generated method stub
		return hospitalMapper.modifyHospital(hospital);
	}

	@Override
	public Hospital getSingle(Doctor doctor) {
		return hospitalMapper.getSingle(doctor);
	}

}
