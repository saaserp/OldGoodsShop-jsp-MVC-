package com.dkkj.ogs.model;

import com.dkkj.absct.Model;

public class GoodsTypeModel extends Model{
	String type_id;
	String type_name;
	String type_father;
	String isHot;
	
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public String getType_father() {
		return type_father;
	}
	public void setType_father(String type_father) {
		this.type_father = type_father;
	}
	public String getIsHot() {
		return isHot;
	}
	public void setIsHot(String isHot) {
		this.isHot = isHot;
	}
	public GoodsTypeModel(String type_id, String type_name, String type_father,
			String isHot) {
		super();
		this.type_id = type_id;
		this.type_name = type_name;
		this.type_father = type_father;
		this.isHot = isHot;
	}
	public GoodsTypeModel() {
		super();
		
	}
	
}
