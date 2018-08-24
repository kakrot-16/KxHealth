package com.kx.pojo;

import java.util.Date;

/**
 * 预约单实体类
 * 
 * @author 申静宇 2018/8/15
 */
public class Appointment {
	private int ap_id;// 预约单id
	private int ap_user_id;// 预约用户id
	private int ap_doc_id;// 预约医生id
	private Date ap_time;// 预约时间
	private int ap_status;// 预约状态1：有效2：无效 

	public int getAp_id() {
		return ap_id;
	}

	public void setAp_id(int ap_id) {
		this.ap_id = ap_id;
	}

	public int getAp_user_id() {
		return ap_user_id;
	}

	public void setAp_user_id(int ap_user_id) {
		this.ap_user_id = ap_user_id;
	}

	public int getAp_doc_id() {
		return ap_doc_id;
	}

	public void setAp_doc_id(int ap_doc_id) {
		this.ap_doc_id = ap_doc_id;
	}

	public Date getAp_time() {
		return ap_time;
	}

	public void setAp_time(Date ap_time) {
		this.ap_time = ap_time;
	}

	public int getAp_status() {
		return ap_status;
	}

	public void setAp_status(int ap_status) {
		this.ap_status = ap_status;
	}

}
