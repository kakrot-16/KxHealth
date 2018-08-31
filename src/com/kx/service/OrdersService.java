package com.kx.service;

import com.kx.pojo.Doctor;
import com.kx.pojo.Orders;

import java.util.Date;
import java.util.List;

/**
 * @author 张帅 on 2018/8/17 0017.       订单服务接口
 * @version 1.0
 */
public interface OrdersService {
    //付款成功订单生成

    /**
     * 订单生成
     */
    int addOrder(Orders order);

    /**
     * 订单状态修改   医生修改订单的状态   从未完成  修改为已完成  根据订单id
     */
    int updateOrder(String or_id);

    /**
     * 查询订单
     * 用户可以查询个人的历史订单
     * 医生查看挂自己号的全部订单  或根据患者姓名查询   或根据患者 时间段-某个时间段 查询
     */
    List<Orders> userQueryOrder(String u_id);
    List<Orders> docQueryOrder(String d_id, String u_name, String or_time1, String or_time2);

    //查询是否还有剩余挂号
    int getResidueStatus(String or_doc_id,String or_data_time);

}
