package com.dkkj.ogs.model;

import com.dkkj.absct.Model;



public class AppointmentModel2 extends Model {
	private String apt_id;
	private String goods_id;
	private String goods_name;
	private String goods_image;
	


	private String apt_timeS;
	private String host_id;

	private String customer_id;
	private String host_name;
	private String apt_place;
	private String apt_price;
	private String CustomerMsg;
	private String HostMsg;
	private String is_ok;
	private String isCustomerOk;
	private String isHostOk;
	public String getGoods_image() {
		return goods_image;
	}
	public String getHost_id() {
		return host_id;
	}
	public void setHost_id(String host_id) {
		this.host_id = host_id;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getHost_name() {
		return host_name;
	}
	public void setHost_name(String host_name) {
		this.host_name = host_name;
	}
	public void setGoods_image(String goods_image) {
		this.goods_image = goods_image;
	}
	public String getApt_id() {
		return apt_id;
	}
	public void setApt_id(String apt_id) {
		this.apt_id = apt_id;
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

	public String getApt_timeS() {
		return apt_timeS;
	}
	public void setApt_timeS(String apt_timeS) {
		this.apt_timeS = apt_timeS;
	}
	public String getApt_place() {
		return apt_place;
	}
	public void setApt_place(String apt_place) {
		this.apt_place = apt_place;
	}
	public String getApt_price() {
		return apt_price;
	}
	public void setApt_price(String apt_price) {
		this.apt_price = apt_price;
	}
	public String getCustomerMsg() {
		return CustomerMsg;
	}
	public void setCustomerMsg(String customerMsg) {
		CustomerMsg = customerMsg;
	}
	public String getHostMsg() {
		return HostMsg;
	}
	public void setHostMsg(String hostMsg) {
		HostMsg = hostMsg;
	}
	public String getIs_ok() {
		return is_ok;
	}
	public void setIs_ok(String is_ok) {
		this.is_ok = is_ok;
	}
	public String getIsCustomerOk() {
		return isCustomerOk;
	}
	public void setIsCustomerOk(String isCustomerOk) {
		this.isCustomerOk = isCustomerOk;
	}
	public String getIsHostOk() {
		return isHostOk;
	}
	public void setIsHostOk(String isHostOk) {
		this.isHostOk = isHostOk;
	}
	/**
	 * 
	 * @param apt_id
	 * @param goods_id
	 * @param goods_name
	 * @param user_name
	 * @param apt_timeS
	 * @param apt_place
	 * @param apt_price
	 * @param customerMsg
	 * @param hostMsg
	 * @param is_ok
	 * @param isCustomerOk
	 * @param isHostOk
	 */
	public AppointmentModel2(
			String apt_id,
			String goods_id,
			String goods_name,
			String goods_image,
			String customer_id,
			String host_id,
			String host_name,
			String apt_timeS,
			String apt_place,
			String apt_price, 
			String customerMsg,
			String hostMsg, 
			String is_ok,
			String isCustomerOk, 
			String isHostOk) {
		super();
		this.apt_id = apt_id;
		this.goods_id = goods_id;
		this.goods_name = goods_name;
		this.goods_image=goods_image;
		this.customer_id=customer_id;
		this.host_id=host_id;
		this.host_name=host_name;
		this.apt_timeS = apt_timeS;
		this.apt_place = apt_place;
		this.apt_price = apt_price;
		CustomerMsg = customerMsg;
		HostMsg = hostMsg;
		this.is_ok = is_ok;
		this.isCustomerOk = isCustomerOk;
		this.isHostOk = isHostOk;
	}
	public AppointmentModel2(){
		
		
	}
	
}
