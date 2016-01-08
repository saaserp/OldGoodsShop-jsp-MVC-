package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class UserModel  extends Model implements Serializable{
	/**
	 * 用户的一个类
	 */
	private static final long serialVersionUID = 1L;
	private String user_id;
	private String user_name;
	private String user_pwd;
	private String user_phone;
	private String user_qq;
	private String user_email;
	private String user_credibility;
	private String user_address;
	private String user_age;
	private String user_nkname;
	private String user_sign;
	private String user_image;
	private String inrol_time;
	private String last_ip;
	private String user_type;
	public UserModel(){
		 this.user_name="";
		 this.user_pwd="";
		 this.user_phone="";
		 this.user_qq="";
		 this.user_email="";
		 this.user_credibility="";
		 this.user_address="";
		 this.user_age="";
		 this.user_nkname="";
		 this.user_sign="";
		 this.user_image="";
		 this.inrol_time="";
		 this.last_ip="";
		 this.user_type="";
	}
	/**
	 * 
	 * @param user_name
	 * @param user_pwd
	 * @param user_email
	 */
	public UserModel(String user_name,String user_pwd,String user_email,String user_type,String last_ip){
		 this.user_name=user_name;
		 this.user_pwd=user_pwd;
		 this.user_phone=null;
		 this.user_qq=null;
		 this.user_email=user_email;
		 this.user_credibility=null;
		 this.user_address=null;
		 this.user_age=null;
		 this.user_nkname=null;
		 this.user_sign=null;
		 this.user_image=null;
		 this.inrol_time=null;
		 this.last_ip=last_ip;
		 this.user_type=user_type;
	}
	
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public UserModel(String user_id, String user_name, String user_pwd,
			String user_phone, String user_qq, String user_email,
			String user_credibility, String user_address, String user_age,
			String user_nkname, String user_sign, String user_image,
			String inrol_time, String last_ip,String user_type) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_phone = user_phone;
		this.user_qq = user_qq;
		this.user_email = user_email;
		this.user_credibility = user_credibility;
		this.user_address = user_address;
		this.user_age = user_age;
		this.user_nkname = user_nkname;
		this.user_sign = user_sign;
		this.user_image = user_image;
		this.inrol_time = inrol_time;
		this.last_ip = last_ip;
		this.user_type=user_type;
		
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_qq() {
		return user_qq;
	}
	public void setUser_qq(String user_qq) {
		this.user_qq = user_qq;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_credibility() {
		return user_credibility;
	}
	public void setUser_credibility(String user_credibility) {
		this.user_credibility = user_credibility;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_age() {
		return user_age;
	}
	public void setUser_age(String user_age) {
		this.user_age = user_age;
	}
	public String getUser_nkname() {
		return user_nkname;
	}
	public void setUser_nkname(String user_nkname) {
		this.user_nkname = user_nkname;
	}
	public String getUser_sign() {
		return user_sign;
	}
	public void setUser_sign(String user_sign) {
		this.user_sign = user_sign;
	}
	public String getUser_image() {
		return user_image;
	}
	public void setUser_image(String user_image) {
		this.user_image = user_image;
	}
	public String getInrol_time() {
		return inrol_time;
	}
	public void setInrol_time(String inrol_time) {
		this.inrol_time = inrol_time;
	}
	public String getLast_ip() {
		return last_ip;
	}
	public void setLast_ip(String last_ip) {
		this.last_ip = last_ip;
	}
	
	
}
