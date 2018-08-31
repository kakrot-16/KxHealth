package com.kx.controller;

import com.kx.pojo.Orders;
import com.kx.service.OrdersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/17 0017.
 * @version 1.0
 */
@Controller
@RequestMapping("/order")
public class OrdersController {
    @Resource
    private OrdersService ordersService;

    @RequestMapping("/add")
    public synchronized String list(Orders order,HttpSession session){
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String or_data_time = formatter.format(order.getOr_data_time());
        System.out.println(or_data_time);
        int status = ordersService.getResidueStatus(String.valueOf(order.getOr_doc_id()),or_data_time);
        System.out.println(status+"~~~~~~~~~~~~~~~~~~~数据库返回状态码1有号");
        int result =0;
        //等于1说明有号
        if (status == 1) {
             result = ordersService.addOrder(order);
        }
        session.setAttribute("result",result);
        return "test";
    }

    @RequestMapping("/userQueryOrder")
    public String userQueryOrder(String u_id, Model model, RedirectAttributes attr){
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
        List<Orders> userQueryOrder = ordersService.userQueryOrder(u_id);
        System.out.println(userQueryOrder.size()+"***************");
        for (Orders userOrder : userQueryOrder) {
            System.out.println(userOrder.getOr_id()+"---------");
        }
        model.addAttribute("userQueryOrder", userQueryOrder);
//        attr.addAttribute("userQueryOrders", userQueryOrders);
        return "show";
    }



    @RequestMapping(value = "/docQueryOrder" ,method = RequestMethod.POST)
    public String docQueryOrder2(
            String d_id, String u_name,String or_time1,String or_time2,Model model){
        List<Orders> docQueryOrder = ordersService.docQueryOrder(d_id, u_name, or_time1, or_time2);
        model.addAttribute("docQueryOrder", docQueryOrder);
        return "show";

    }

}
