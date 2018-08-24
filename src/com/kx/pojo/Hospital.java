package com.kx.pojo;

/**
 * 医院类
 * 
 * @author 郝利寒
 *
 */

public class Hospital {
	private int h_id;
	private String h_name;// 医院名称
	private String h_class;// 医院类别类型
	private int h_grade;//医院等级
	private String h_address;// 医院地址
	private String h_url;// 医院网址
	private String h_door_img;// 医院图片
	private String h_layout_img;// 医院内部布局导航
	private String h_flowpath_img;// 看病流程
	private int h_outNum;//医院放号量    张帅添加

	public int getH_outNum() {
		return h_outNum;
	}

	public void setH_outNum(int h_outNum) {
		this.h_outNum = h_outNum;
	}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public String getH_class() {
		return h_class;
	}

	public void setH_class(String h_class) {
		this.h_class = h_class;
	}

	public int getH_grade() {
		return h_grade;
	}

	public void setH_grade(int h_grade) {
		this.h_grade = h_grade;
	}

	public String getH_address() {
		return h_address;
	}

	public void setH_address(String h_address) {
		this.h_address = h_address;
	}

	public String getH_url() {
		return h_url;
	}

	public void setH_url(String h_url) {
		this.h_url = h_url;
	}

	public String getH_door_img() {
		return h_door_img;
	}

	public void setH_door_img(String h_door_img) {
		this.h_door_img = h_door_img;
	}

	public String getH_layout_img() {
		return h_layout_img;
	}

	public void setH_layout_img(String h_layout_img) {
		this.h_layout_img = h_layout_img;
	}

	public String getH_flowpath_img() {
		return h_flowpath_img;
	}

	public void setH_flowpath_img(String h_flowpath_img) {
		this.h_flowpath_img = h_flowpath_img;
	}

	@Override
	public String toString() {
		return "Hospital [h_id=" + h_id + ", " + (h_name != null ? "h_name=" + h_name + ", " : "")
				+ (h_class != null ? "h_class=" + h_class + ", " : "") + "h_grade=" + h_grade + ", "
				+ (h_address != null ? "h_address=" + h_address + ", " : "")
				+ (h_url != null ? "h_url=" + h_url + ", " : "")
				+ (h_door_img != null ? "h_door_img=" + h_door_img + ", " : "")
				+ (h_layout_img != null ? "h_layout_img=" + h_layout_img + ", " : "")
				+ (h_flowpath_img != null ? "h_flowpath_img=" + h_flowpath_img : "") + "]";
	}

}
