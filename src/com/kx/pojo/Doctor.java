
package com.kx.pojo;

/**
 * 医生实体类
 * 
 * @author 申静宇
 *
 */
public class Doctor {
	private int d_id;// 医生编号
	private String d_code;// 医生账号
	private String d_name;// 医生姓名
	private String d_pass;// 医生密码
	private int d_gender;// 医生性别1男2女
	private int d_hospital;// 医生所属医院id
	private int d_department1;// 医生所属一级科室id
	private int d_department2;// 医生所述二级科室id
	private int d_work_age;// 医生工龄
	private String d_type;// 医生职称
	private String d_intro;// 医生简介
	private String d_picture;// 医生照片
	private double d_price;// 该医生挂号费
	private double d_consult;// 咨询费

	public int getD_id() {
		return d_id;
	}

	public void setD_id(int d_id) {
		this.d_id = d_id;
	}

	public String getD_code() {
		return d_code;
	}

	public void setD_code(String d_code) {
		this.d_code = d_code;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getD_pass() {
		return d_pass;
	}

	public void setD_pass(String d_pass) {
		this.d_pass = d_pass;
	}

	public int getD_gender() {
		return d_gender;
	}

	public void setD_gender(int d_gender) {
		this.d_gender = d_gender;
	}

	public int getD_hospital() {
		return d_hospital;
	}

	public void setD_hospital(int d_hospital) {
		this.d_hospital = d_hospital;
	}

	public int getD_department1() {
		return d_department1;
	}

	public void setD_department1(int d_department1) {
		this.d_department1 = d_department1;
	}

	public int getD_department2() {
		return d_department2;
	}

	public void setD_department2(int d_department2) {
		this.d_department2 = d_department2;
	}

	public int getD_work_age() {
		return d_work_age;
	}

	public void setD_work_age(int d_work_age) {
		this.d_work_age = d_work_age;
	}

	public String getD_type() {
		return d_type;
	}

	public void setD_type(String d_type) {
		this.d_type = d_type;
	}

	public String getD_intro() {
		return d_intro;
	}

	public void setD_intro(String d_intro) {
		this.d_intro = d_intro;
	}

	public String getD_picture() {
		return d_picture;
	}

	public void setD_picture(String d_picture) {
		this.d_picture = d_picture;
	}

	public double getD_price() {
		return d_price;
	}

	public void setD_price(double d_price) {
		this.d_price = d_price;
	}

	public double getD_consult() {
		return d_consult;
	}

	public void setD_consult(double d_consult) {
		this.d_consult = d_consult;
	}

}
