package com.kx.controller;

import com.kx.pojo.Orders;
import com.kx.service.OrdersService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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
    public String list(Orders order, HttpSession session){
        int result = ordersService.addOrder(order);
        session.setAttribute("result", result);
        return "redirect:/test.jsp";
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
