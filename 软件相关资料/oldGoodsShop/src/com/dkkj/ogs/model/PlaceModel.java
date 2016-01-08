package com.dkkj.ogs.model;

public class PlaceModel {


	String place_id;
	String province_id;
	String school_id;
	public String getPlace_id() {
		return place_id;
	}
	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}
	public PlaceModel(String place_id, String province_id, String school_id) {
		super();
		this.place_id = place_id;
		this.province_id = province_id;
		this.school_id = school_id;
	}
	public String getProvince_id() {
		return province_id;
	}
	public void setProvince_id(String province_id) {
		this.province_id = province_id;
	}
	public String getSchool_id() {
		return school_id;
	}
	public void setSchool_id(String school_id) {
		this.school_id = school_id;
	}
}
