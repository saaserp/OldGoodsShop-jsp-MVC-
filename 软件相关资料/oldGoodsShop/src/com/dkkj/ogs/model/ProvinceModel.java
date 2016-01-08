package com.dkkj.ogs.model;

public class ProvinceModel {
	public ProvinceModel(String province_id, String province_name) {
		super();
		this.province_id = province_id;
		this.province_name = province_name;
	}
	String province_id;
	String province_name;
	public String getProvince_id() {
		return province_id;
	}
	public void setProvince_id(String province_id) {
		this.province_id = province_id;
	}
	public String getProvince_name() {
		return province_name;
	}
	public void setProvince_name(String province_name) {
		this.province_name = province_name;
	}

}
