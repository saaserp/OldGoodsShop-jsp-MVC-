package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class CommentModel extends Model implements Serializable{

	/**
	 * ∆¿¬€¿‡
	 */
	private static final long serialVersionUID = 1L;
	private String commment_id;
	private String own_id;
	private String user_id;

	private String comment_msg;
	private String commnet_time;
	private String type_id;
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	/**
	 * 
	 * @param own_id
	 * @param user_id
	 * @param type_id
	 * @param comment_msg
	 */
	public CommentModel( String own_id, String user_id,String type_id,String comment_msg) {
		super();
		this.own_id = own_id;
		this.type_id=type_id;
		this.comment_msg = comment_msg;
		this.user_id=user_id;
		
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCommment_id() {
		return commment_id;
	}
	public void setCommment_id(String commment_id) {
		this.commment_id = commment_id;
	}
	public String getOwn_id() {
		return own_id;
	}
	public void setOwn_id(String own_id) {
		this.own_id = own_id;
	}
	public String getComment_msg() {
		return comment_msg;
	}
	public void setComment_msg(String comment_msg) {
		this.comment_msg = comment_msg;
	}
	public String getCommnet_time() {
		return commnet_time;
	}
	public void setCommnet_time(String commnet_time) {
		this.commnet_time = commnet_time;
	}

}
