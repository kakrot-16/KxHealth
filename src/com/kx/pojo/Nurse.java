package com.kx.pojo;

import java.util.Date;
/**
 * 护士实体类
 * @author李胜杰
 *
 */
public class Nurse {
	private int n_id;//护士id
	private String n_name;//护士姓名
	private Date lastTime;//上次出诊时间
	private	String isFree;//护士状态，0空闲，1忙碌
	private String n_phone;//联系电话
	private int orderid;//正在出诊订单id
	public int getN_id() {
		return n_id;
	}
	public void setN_id(int n_id) {
		this.n_id = n_id;
	}
	public String getN_name() {
		return n_name;
	}
	public void setN_name(String n_name) {
		this.n_name = n_name;
	}
	public Date getLastTime() {
		return lastTime;
	}
	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}
	public String getIsFree() {
		return isFree;
	}
	public void setIsFree(String isFree) {
		this.isFree = isFree;
	}
	public String getN_phone() {
		return n_phone;
	}
	public void setN_phone(String n_phone) {
		this.n_phone = n_phone;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	
}
