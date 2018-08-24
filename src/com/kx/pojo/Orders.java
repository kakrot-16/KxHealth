package com.kx.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 订单类
 * 
 * @author 郝利寒
 *
 */
public class Orders {
	private String or_id;// 订单id/订单号
	private int or_buyer_id;// 购买人ID
	private String or_name;// 使用人姓名
	private int or_doc_id;// 医生id
	private int or_sex;// 使用人性别1男2女
	private String or_id_card;// 使用人身份证号
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date or_time;// 下单时间
    @DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date or_data_time;// 预约时间
	private double or_price;// 挂号的价格
	private String or_payId;// 支付账号id
	private int or_type;// 1:未领取2已领取

	public String getOr_id() {
		return or_id;
	}

	public void setOr_id(String or_id) {
		this.or_id = or_id;
	}

	public int getOr_buyer_id() {
		return or_buyer_id;
	}

	public void setOr_buyer_id(int or_buyer_id) {
		this.or_buyer_id = or_buyer_id;
	}

	public String getOr_name() {
		return or_name;
	}

	public void setOr_name(String or_name) {
		this.or_name = or_name;
	}

	public int getOr_doc_id() {
		return or_doc_id;
	}

	public void setOr_doc_id(int or_doc_id) {
		this.or_doc_id = or_doc_id;
	}

	public int getOr_sex() {
		return or_sex;
	}

	public void setOr_sex(int or_sex) {
		this.or_sex = or_sex;
	}

	public String getOr_id_card() {
		return or_id_card;
	}

	public void setOr_id_card(String or_id_card) {
		this.or_id_card = or_id_card;
	}

	public Date getOr_time() {
		return or_time;
	}

	public void setOr_time(Date or_time) {
		this.or_time = or_time;
	}

	public Date getOr_data_time() {
		return or_data_time;
	}

	public void setOr_data_time(Date or_data_time) {
		this.or_data_time = or_data_time;
	}

	public double getOr_price() {
		return or_price;
	}

	public void setOr_price(double or_price) {
		this.or_price = or_price;
	}

	public String getOr_payId() {
		return or_payId;
	}

	public void setOr_payId(String or_payId) {
		this.or_payId = or_payId;
	}

	public int getOr_type() {
		return or_type;
	}

	public void setOr_type(int or_type) {
		this.or_type = or_type;
	}

}
