package com.kx.pojo;
/**
 * 历史用户实体类
 * @author 李胜杰
 *
 */
public class Historyuser {
	private int hu_id;//历史用户id
	private int p_id;//患者id
	private int p_score;//患者信誉分，一次举报扣5分
	private int inBlacklist;//用户黑名单，0不在。1在
	public int getHu_id() {
		return hu_id;
	}
	public void setHu_id(int hu_id) {
		this.hu_id = hu_id;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public int getP_score() {
		return p_score;
	}
	public void setP_score(int p_score) {
		this.p_score = p_score;
	}
	public int getInBlacklist() {
		return inBlacklist;
	}
	public void setInBlacklist(int inBlacklist) {
		this.inBlacklist = inBlacklist;
	}
	
}
