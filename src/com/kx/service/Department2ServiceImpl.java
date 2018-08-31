package com.kx.service;

import com.kx.dao.Department2Mapper;
import com.kx.pojo.Department2;
import com.kx.service.Department2Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class Department2ServiceImpl implements Department2Service{
    @Resource
    private Department2Mapper department2Mapper;
    @Override
    public int addDepartment2(Department2 department2) {
        return department2Mapper.addDepartment2(department2);
    }

    @Override
    public int deleteDepartment2(int d2_id) {
        return department2Mapper.deleteDepartment2(d2_id);
    }

    @Override
    public int updateDepartment2(Department2 department2) {
        return department2Mapper.updateDepartment2(department2);
    }

    @Override
    public List<Department2> getDepartmentList(Department2 department2) {
        return department2Mapper.getDepartmentList(department2);
    }

    @Override
    public List<Department2> getDe1ListById(String id) {
        return department2Mapper.getDe1ListById(id  );
    }

    @Override
    public String getInfo(String d2_name) {
        return department2Mapper.getInfo(d2_name);
    }
}
