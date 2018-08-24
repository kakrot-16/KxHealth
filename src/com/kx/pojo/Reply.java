package com.kx.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 回帖表
 * @author 王令飞
 *
 */
public class Reply {
	private int reply_id;//回帖编号
	private int reply_post;//所回帖子的id,对应post（帖子表）的post_id
	private String reply_content;//回帖内容
	private String reply_picture;//回帖图片(路径)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JSONField(format = "yyyy-MM-dd")
	private Date reply_time;//回复帖时间
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JSONField(format = "yyyy-MM-dd")
	private Date reply_last_time;//回帖最后操作时间（修改时间）
	private int reply_publish;//回帖人id,对应用户表的用户id 或者医生表中的医生id
	private String reply_code;//回帖人账号。session获取值
	private String reply_identity;//回帖人身份
	private int reply_reoprt;//举报次数
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public int getReply_post() {
		return reply_post;
	}
	public void setReply_post(int reply_post) {
		this.reply_post = reply_post;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public String getReply_picture() {
		return reply_picture;
	}
	public void setReply_picture(String reply_picture) {
		this.reply_picture = reply_picture;
	}
	public Date getReply_time() {
		return reply_time;
	}
	public void setReply_time(Date reply_time) {
		this.reply_time = reply_time;
	}
	public Date getReply_last_time() {
		return reply_last_time;
	}
	public void setReply_last_time(Date reply_last_time) {
		this.reply_last_time = reply_last_time;
	}
	public int getReply_publish() {
		return reply_publish;
	}
	public void setReply_publish(int reply_publish) {
		this.reply_publish = reply_publish;
	}
	public String getReply_code() {
		return reply_code;
	}
	public void setReply_code(String reply_code) {
		this.reply_code = reply_code;
	}
	public int getReply_reoprt() {
		return reply_reoprt;
	}
	public void setReply_reoprt(int reply_reoprt) {
		this.reply_reoprt = reply_reoprt;
	}
	public String getReply_identity() {
		return reply_identity;
	}
	public void setReply_identity(String reply_identity) {
		this.reply_identity = reply_identity;
	}
	
	
}
