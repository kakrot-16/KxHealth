package com.kx.pojo;

import java.util.Date;

/**
 * 订单实体类
 * @author 李胜杰
 *
 */

public class Nurseorder {
	private int no_id;//订单id
	private int p_id;//患者id
	private String p_phone;//联系人手机
	private String p_hospital;//就诊医院
	private String address;//上门地址
	private String isRegistered;//是否挂号，0未挂号，1已挂号
	private String haveTool;//是否自备工具，0未自备，1自备
	private Date no_starttime;//预约时间
	private String no_code;//订单编号
	private String p_code;//服务验证码
	private String payCode;//支付账号
	private String no_status;//订单状态:0未付款1已付款2已取消3进行中4已完成
	private String no_comment;//患者评价护士服务
	private int no_nurse;//分配护士ID
	private Date no_overTime;//订单结束时间
	private int no_s_id;//服务项目id
	public int getNo_id() {
		return no_id;
	}
	public void setNo_id(int no_id) {
		this.no_id = no_id;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_phone() {
		return p_phone;
	}
	public void setP_phone(String p_phone) {
		this.p_phone = p_phone;
	}
	public String getP_hospital() {
		return p_hospital;
	}
	public void setP_hospital(String p_hospital) {
		this.p_hospital = p_hospital;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIsRegistered() {
		return isRegistered;
	}
	public void setIsRegistered(String isRegistered) {
		this.isRegistered = isRegistered;
	}
	public String getHaveTool() {
		return haveTool;
	}
	public void setHaveTool(String haveTool) {
		this.haveTool = haveTool;
	}
	public Date getNo_starttime() {
		return no_starttime;
	}
	public void setNo_starttime(Date no_starttime) {
		this.no_starttime = no_starttime;
	}
	public String getNo_code() {
		return no_code;
	}
	public void setNo_code(String no_code) {
		this.no_code = no_code;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getPayCode() {
		return payCode;
	}
	public void setPayCode(String payCode) {
		this.payCode = payCode;
	}
	public String getNo_status() {
		return no_status;
	}
	public void setNo_status(String no_status) {
		this.no_status = no_status;
	}
	public String getNo_comment() {
		return no_comment;
	}
	public void setNo_comment(String no_comment) {
		this.no_comment = no_comment;
	}
	public int getNo_nurse() {
		return no_nurse;
	}
	public void setNo_nurse(int no_nurse) {
		this.no_nurse = no_nurse;
	}
	public Date getNo_overTime() {
		return no_overTime;
	}
	public void setNo_overTime(Date no_overTime) {
		this.no_overTime = no_overTime;
	}
	public int getNo_s_id() {
		return no_s_id;
	}
	public void setNo_s_id(int no_s_id) {
		this.no_s_id = no_s_id;
	}
	
}