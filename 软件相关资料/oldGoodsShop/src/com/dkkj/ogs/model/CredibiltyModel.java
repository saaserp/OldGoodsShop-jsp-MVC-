package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class CredibiltyModel extends Model implements Serializable {
	public String credibitly_id;
	public String credibitly_name;
	public String credibitly_image;
	public String credibity_describe;
	CredibiltyModel(){
		
	}
	public CredibiltyModel(String credibitly_id, String credibitly_name,
			String credibitly_image, String credibity_describe) {
		super();
		this.credibitly_id = credibitly_id;
		this.credibitly_name = credibitly_name;
		this.credibitly_image = credibitly_image;
		this.credibity_describe = credibity_describe;
	}
	public String getCredibitly_id() {
		return credibitly_id;
	}
	public void setCredibitly_id(String credibitly_id) {
		this.credibitly_id = credibitly_id;
	}
	public String getCredibitly_name() {
		return credibitly_name;
	}
	public void setCredibitly_name(String credibitly_name) {
		this.credibitly_name = credibitly_name;
	}
	public String getCredibitly_image() {
		return credibitly_image;
	}
	public void setCredibitly_image(String credibitly_image) {
		this.credibitly_image = credibitly_image;
	}
	public String getCredibity_describe() {
		return credibity_describe;
	}
	public void setCredibity_describe(String credibity_describe) {
		this.credibity_describe = credibity_describe;
	}
	

}
