package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class SearchModel extends Model implements Serializable{
	private String goods_id;
	private String goods_name;
	private String goods_image;
	private String goods_price;
	public String getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
	}
	public String getGoods_image() {
		return goods_image;
	}
	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}
	private String user_name;
	private String goods_descible;
	private String state_name;
	private String state_iamge;
	public SearchModel(String goods_id, String goods_name, String goods_image,String goods_price,String user_name,
			String goods_descible, String state_name, String state_iamge) {
		super();
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.goods_image=goods_image;
		this.goods_price=goods_price;
		this.user_name = user_name;
		this.goods_descible = goods_descible;
		this.state_name = state_name;
		this.state_iamge = state_iamge;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getGoods_descible() {
		return goods_descible;
	}
	public void setGoods_descible(String goods_descible) {
		this.goods_descible = goods_descible;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
	public String getState_iamge() {
		return state_iamge;
	}
	public void setState_iamge(String state_iamge) {
		this.state_iamge = state_iamge;
	}
	
	
	

}
