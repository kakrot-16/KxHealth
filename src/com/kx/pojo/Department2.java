package com.kx.pojo;

/**
 * 二级科室实体类
 * 
 * @author 申静宇
 *
 */
public class Department2 {
	private int d2_id;// 一级科室id
	private String d2_name;// 一级科室名称
	private int d2_d1_id;// 所属医院ID
	private String d2_info;// 科室简介

	public int getD2_id() {
		return d2_id;
	}

	public void setD2_id(int d2_id) {
		this.d2_id = d2_id;
	}

	public String getD2_name() {
		return d2_name;
	}

	public void setD2_name(String d2_name) {
		this.d2_name = d2_name;
	}

	public int getD2_d1_id() {
		return d2_d1_id;
	}

	public void setD2_d1_id(int d2_d1_id) {
		this.d2_d1_id = d2_d1_id;
	}

	public String getD2_info() {
		return d2_info;
	}

	public void setD2_info(String d2_info) {
		this.d2_info = d2_info;
	}

}
