package com.kx.service;

import com.kx.dao.OrdersMapper;
import com.kx.pojo.Doctor;
import com.kx.pojo.Orders;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/17 0017.
 * @version 1.0
 */
@Service
@Transactional
public class OrdersServiceImpl implements OrdersService {
    @Resource
    private OrdersMapper ordersMapper;

    @Override
    public int addOrder(Orders order) {
        return ordersMapper.addOrder(order);
    }

    @Override
    public int updateOrder(String or_id) {
        return ordersMapper.updateOrder(or_id);
    }

    @Override
    public List<Orders> userQueryOrder(String u_id) {
        return ordersMapper.userQueryOrder(u_id);
    }

    @Override
    public List<Orders> docQueryOrder(String d_id, String u_name, String or_time1, String or_time2) {
        return ordersMapper.docQueryOrder(d_id,u_name,or_time1,or_time2);
    }

    @Override
    public int getResidueStatus(String or_doc_id,String or_data_id) {
        return ordersMapper.getResidueStatus(or_doc_id,or_data_id);
    }

}
