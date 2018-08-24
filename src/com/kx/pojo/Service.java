package com.kx.pojo;
/**
 * 服务项目实体类
 * @author李胜杰
 *
 */
public class Service {
	private int s_id;//服务项目id
	private String s_name;//服务名称
	private String s_price;//服务价格
	private int s_hour;//服务基础时长
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_price() {
		return s_price;
	}
	public void setS_price(String s_price) {
		this.s_price = s_price;
	}
	public int getS_hour() {
		return s_hour;
	}
	public void setS_hour(int s_hour) {
		this.s_hour = s_hour;
	}
	
}
