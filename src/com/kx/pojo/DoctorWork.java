package com.kx.pojo;

import java.util.Date;

/**
 * @author kakrot -16 on 2018/8/22 0022. 张帅 郝立寒 共用
 * @version 1.0
 */
public class DoctorWork {
    private int w_id;//排版id
    private int w_doc_id;//对应的医生id
    private Date w_workDate;//上班日期
    private Date w_offDutyDate;//下班日期

    public int getW_id() {
        return w_id;
    }

    public void setW_id(int w_id) {
        this.w_id = w_id;
    }

    public int getW_doc_id() {
        return w_doc_id;
    }

    public void setW_doc_id(int w_doc_id) {
        this.w_doc_id = w_doc_id;
    }

    public Date getW_workDate() {
        return w_workDate;
    }

    public void setW_workDate(Date w_workDate) {
        this.w_workDate = w_workDate;
    }

    public Date getW_offDutyDate() {
        return w_offDutyDate;
    }

    public void setW_offDutyDate(Date w_offDutyDate) {
        this.w_offDutyDate = w_offDutyDate;
    }
}
