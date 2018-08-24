package com.kx.service;

import com.kx.dao.Department1Mapper;
import com.kx.pojo.Department1;
import com.kx.pojo.Doctor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class Department1SeerviceImpl implements Department1Service{
    @Resource
    private Department1Mapper department1Mapper;

    @Override
    public List<Department1> getDe1List(Department1 department1) {
        return department1Mapper.getDe1List(department1);
    }

    @Override
    public int addDe1(Department1 department1) {
        return department1Mapper.addDe1(department1);
    }

    @Override
    public int deletaDe1(int d1_id) {
        return department1Mapper.deletaDe1(d1_id);
    }

    @Override
    public int updateDe1(Department1 department1) {
        return department1Mapper.updateDe1(department1);
    }

    @Override
    public Department1 getTel(Doctor doctor) {
        return department1Mapper.getTel(doctor);
    }


    @Override
	public List<Department1> getDe1ListById(String id) {
		// TODO Auto-generated method stub
		return department1Mapper.getDe1ListById(id);
	}
    
}
