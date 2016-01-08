package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class GoodsModel extends Model implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String goods_id;
	String goods_name;
	String goods_price;
	String type_id;
	String goods_image;
	String goods_describe;
	String oldDeep;
	String goods_pre_price;
	String place_id;
	
	
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public GoodsModel(String goods_id,String goods_name, String goods_price,
			String type_id, String goods_image, String goods_describe,String oldDeep,String goods_pre_price,String place_id) {
		super();
		this.goods_id=goods_id;
		this.goods_name = goods_name;
		this.goods_price = goods_price;
		this.type_id = type_id;
		this.goods_image = goods_image;
		this.goods_describe = goods_describe;
		this.oldDeep=oldDeep;
		this.goods_pre_price=goods_pre_price;
		this.place_id=place_id;
		System.out.println("物品的价格:"+this.goods_price);
		System.out.println("物品的新旧程度:"+this.oldDeep);
	}
	/**
	 * 
	 * @param goods_name
	 * @param goods_price
	 * @param type_id
	 * @param goods_image
	 * @param goods_describe
	 */
//	public GoodsModel(String goods_name, String goods_price,
//			String type_id, String goods_image, String goods_describe,String oldDeep) {
//		super();
//		
//		this.goods_name = goods_name;
//		this.goods_price = goods_price;
//		this.type_id = type_id;
//		this.goods_image = goods_image;
//		this.goods_describe = goods_describe;
//		this.oldDeep=oldDeep;
//	}
	
	
	public String getGoods_pre_price() {
		return goods_pre_price;
	}
	public void setGoods_pre_price(String goods_pre_price) {
		this.goods_pre_price = goods_pre_price;
	}
	public String getOldDeep() {
		return oldDeep;
	}
	public void setOldDeep(String oldDeep) {
		this.oldDeep = oldDeep;
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
	public String getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(String goods_price) {
		this.goods_price = goods_price;
	}
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	public String getGoods_image() {
		return goods_image;
	}
	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}
	public String getGoods_describe() {
		return goods_describe;
	}
	public void setGoods_describe(String goods_describe) {
		this.goods_describe = goods_describe;
	}
	
}
