package com.kx.util;
import com.kx.pojo.User;
import com.kx.service.AppointmentService;
import com.kx.util.common.Config;
import com.kx.util.common.HttpUtil;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.TimerTask;

/**
 * 在 TimerManager 这个类里面，大家一定要注意 时间点的问题。如果你设定在凌晨2点执行任务。但你是在2点以后
 *发布的程序或是重启过服务，那这样的情况下，任务会立即执行，而不是等到第二天的凌晨2点执行。为了，避免这种情况
 *发生，只能判断一下，如果发布或重启服务的时间晚于定时执行任务的时间，就在此基础上加一天。
 * @author wls
 *
 */
@Service
public class NFDFlightDataTimerTask extends TimerTask {
    private static SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static String operation = "/industrySMS/sendSMS";
    private static String accountSid = Config.ACCOUNT_SID;
    private static String to ;
    private static String smsContent ;
    @Override
    public void run() {
        try {
            //在这里写你要执行的内容
            String path = "applicationContext.xml";
            ApplicationContext ac = new ClassPathXmlApplicationContext(path);
            AppointmentService appointmentService = (AppointmentService) ac.getBean("appointmentService");
            List<User> appointmentList =  appointmentService.getYes();
            System.out.println("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
            for (User appointment : appointmentList) {
                System.out.println(appointment.getU_phone());
                to = appointment.getU_phone();
                smsContent = "【康馨尚医】"+appointment.getU_name()+"，你好，你预约的医生正在放号中。请及时登陆进行挂号。";
                String tmpSmsContent = null;
                try{
                    tmpSmsContent = URLEncoder.encode(smsContent, "UTF-8");
                }catch(Exception e){
                }
                String url = Config.BASE_URL + operation;
                String body = "accountSid=" + accountSid + "&to=" + to + "&smsContent=" + tmpSmsContent
                        + HttpUtil.createCommonParam();

                // 提交请求
                String result = HttpUtil.post(url, body);
                System.out.println("result:" + System.lineSeparator() + result);
            }
            System.out.println("执行当前时间"+formatter.format(Calendar.getInstance().getTime()));
        } catch (Exception e) {
            System.out.println("-------------解析信息发生异常--------------");
        }
    }

}