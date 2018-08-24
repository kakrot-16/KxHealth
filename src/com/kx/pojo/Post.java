package com.kx.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 帖子表（发表的帖子）
 * @author 王令飞
 *
 */
public class Post {
	private int post_id;//帖子的编号
	private String post_title;//帖子标题
	private String post_content;//帖子内容
	private String post_picture;//图片（路径）
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JSONField(format = "yyyy-MM-dd")
	private Date post_time;//发帖时间
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JSONField(format = "yyyy-MM-dd")
	private Date post_last_time;//最后修改时间
	private int post_good;//被赞次数
	private int post_bad;//被踩次数
	private int post_collection;//收藏次数
	private int post_type;//模块
	private String post_label;//模块标签
	private int post_publish;//发帖人id 
	private String post_code;//发帖人账号
	private int post_report;//举报次数
	private String post_identity;//发帖人身份
	private int post_count;//帖子浏览量
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public String getPost_picture() {
		return post_picture;
	}
	public void setPost_picture(String post_picture) {
		this.post_picture = post_picture;
	}
	public Date getPost_time() {
		return post_time;
	}
	public void setPost_time(Date post_time) {
		this.post_time = post_time;
	}
	public Date getPost_last_time() {
		return post_last_time;
	}
	public void setPost_last_time(Date post_last_time) {
		this.post_last_time = post_last_time;
	}
	public int getPost_good() {
		return post_good;
	}
	public void setPost_good(int post_good) {
		this.post_good = post_good;
	}
	public int getPost_bad() {
		return post_bad;
	}
	public void setPost_bad(int post_bad) {
		this.post_bad = post_bad;
	}
	public int getPost_collection() {
		return post_collection;
	}
	public void setPost_collection(int post_collection) {
		this.post_collection = post_collection;
	}
	public int getPost_type() {
		return post_type;
	}
	public void setPost_type(int post_type) {
		this.post_type = post_type;
	}
	public String getPost_label() {
		return post_label;
	}
	public void setPost_label(String post_label) {
		this.post_label = post_label;
	}
	public int getPost_publish() {
		return post_publish;
	}
	public void setPost_publish(int post_publish) {
		this.post_publish = post_publish;
	}
	public String getPost_code() {
		return post_code;
	}
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}
	public int getPost_report() {
		return post_report;
	}
	public void setPost_report(int post_report) {
		this.post_report = post_report;
	}
	public String getPost_identity() {
		return post_identity;
	}
	public void setPost_identity(String post_identity) {
		this.post_identity = post_identity;
	}
	public int getPost_count() {
		return post_count;
	}
	public void setPost_count(int post_count) {
		this.post_count = post_count;
	}
	
	
	
}
