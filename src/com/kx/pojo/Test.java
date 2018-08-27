package com.kx.pojo;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @author kakrot -16 on 2018/8/27 0027.
 * @version 1.0
 */
public class Test {
    public static void main(String[] args) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = Calendar.getInstance();
        String[] timeList = new String[7];
        for (int i = 0; i < 7; i++) {
            Date monday = c.getTime();
            timeList[i] = sdf.format(monday);
            c.add(Calendar.DATE, +1);
        }

        System.out.println(timeList[0]);

        for (String s : timeList) {
            System.out.println(s);
        }
    }
}
