package com.dkkj.ogs.model;

import com.dkkj.absct.Model;

public class UerGoodsModel extends Model {
	private String own_id;
	private String user_id;
	private String goods_id;
	private String state_id;
	private String add_time;
	public UerGoodsModel( String user_id, String goods_id,
			String state_id) {
		super();
	
		this.user_id = user_id;
		this.goods_id = goods_id;
		this.state_id = state_id;
		
	}
	public String getOwn_id() {
		return own_id;
	}
	public void setOwn_id(String own_id) {
		this.own_id = own_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getState_id() {
		return state_id;
	}
	public void setState_id(String state_id) {
		this.state_id = state_id;
	}
	public String getAdd_time() {
		return add_time;
	}
	public void setAdd_time(String add_time) {
		this.add_time = add_time;
	}
	public UerGoodsModel(String own_id, String user_id, String goods_id,
			String state_id, String add_time) {
		super();
		this.own_id = own_id;
		this.user_id = user_id;
		this.goods_id = goods_id;
		this.state_id = state_id;
		this.add_time = add_time;
	}
	
}
