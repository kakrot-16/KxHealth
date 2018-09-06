package com.kx.util;
import com.kx.pojo.Orders;
import org.junit.Test;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author kakrot -16 on 2018/9/3 0003.
 * @version 1.0     订单号生成字符串拼接类
 */
public  class OrdersStr {
    //用户id(当前时间)+医生id(4位)+订单价格(4位)+4位随机数
   public static String getStr(Orders orders) {
        Date date = new Date();
        String time = new SimpleDateFormat("yyyyMMdd").format(date);//时间

        int id1=orders.getOr_doc_id();
        DecimalFormat df=new DecimalFormat("0000");
        String id2=df.format(id1);//医生id

        double price1 = orders.getOr_price();
        String price2 = df.format(price1);//订单价格

        int math=(int)((Math.random()*9+1)*100000);
        String mathStr = String.valueOf(math);

        String str = time+id2+price2+mathStr;
        return str;
    }
    @Test
    public void d(){
            System.out.println((int)((Math.random()*9+1)*100000));
    }
}
