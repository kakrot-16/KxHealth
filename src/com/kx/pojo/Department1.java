package com.kx.pojo;

import java.util.List;

/**
 * 一级科室实体类
 * 
 * @author 申静宇
 *
 */
public class Department1 {
	private int d1_id;// 一级科室id
	private String d1_name;// 一级科室名称
	private int d1_hospital_id;// 所属医院ID
	private String d1_tel;// 科室电话
	private List<Department2> d2List;// 下属二级科室集合

	public int getD1_id() {
		return d1_id;
	}

	public void setD1_id(int d1_id) {
		this.d1_id = d1_id;
	}

	public String getD1_name() {
		return d1_name;
	}

	public void setD1_name(String d1_name) {
		this.d1_name = d1_name;
	}

	public int getD1_hospital_id() {
		return d1_hospital_id;
	}

	public void setD1_hospital_id(int d1_hospital_id) {
		this.d1_hospital_id = d1_hospital_id;
	}

	public String getD1_tel() {
		return d1_tel;
	}

	public void setD1_tel(String d1_tel) {
		this.d1_tel = d1_tel;
	}

	public List<Department2> getD2List() {
		return d2List;
	}

	public void setD2List(List<Department2> d2List) {
		this.d2List = d2List;
	}

}
