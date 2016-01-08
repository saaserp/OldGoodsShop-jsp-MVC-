package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class DemandModel extends Model implements Serializable{

	/**
	 * –Ë«Û¿‡
	 */
	private static final long serialVersionUID = 1L;
	private String demand_id;
	private String user_id;
	private String demand_name;
	private String demand_describe;
	private String demand_price;
	private String type_id;
	private String add_time;
	/**
	 * 
	 * @param user_id
	 * @param demand_name
	 * @param demand_describe
	 * @param demand_price
	 * @param type_id
	 */
	public DemandModel(String user_id, String demand_name,
			String demand_describe, String demand_price, String type_id,String add_time
			) {
		super();
		
		this.user_id = user_id;
		this.demand_name = demand_name;
		this.demand_describe = demand_describe;
		this.demand_price = demand_price;
		this.type_id = type_id;
		this.add_time=add_time;
	
	}
	public String getDemand_id() {
		return demand_id;
	}
	public void setDemand_id(String demand_id) {
		this.demand_id = demand_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDemand_name() {
		return demand_name;
	}
	public void setDemand_name(String demand_name) {
		this.demand_name = demand_name;
	}
	public String getDemand_describe() {
		return demand_describe;
	}
	public void setDemand_describe(String demand_describe) {
		this.demand_describe = demand_describe;
	}
	public String getDemand_price() {
		return demand_price;
	}
	public void setDemand_price(String demand_price) {
		this.demand_price = demand_price;
	}
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	public String getAdd_time() {
		return add_time;
	}
	public void setAdd_time(String add_time) {
		this.add_time = add_time;
	}
	

}
