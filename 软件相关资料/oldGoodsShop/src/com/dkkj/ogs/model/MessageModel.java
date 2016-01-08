package com.dkkj.ogs.model;

import java.io.Serializable;

import com.dkkj.absct.Model;

public class MessageModel extends Model implements Serializable{
	
	/**
	 * œ˚œ¢¿‡
	 */
	private static final long serialVersionUID = 1L;
	private String msg_id;
	private String user_from;
	private String user_to;
	private String user_msg;
	private String send_time;
	/**
	 * 
	 * @param user_from
	 * @param user_to
	 * @param user_msg
	 */
	public MessageModel( String user_from, String user_to,
			String user_msg) {
		super();
		
		this.user_from = user_from;
		this.user_to = user_to;
		this.user_msg = user_msg;

	}
	public MessageModel(String msg_id, String user_from, String user_to,
			String user_msg, String send_time) {
		super();
		this.msg_id = msg_id;
		this.user_from = user_from;
		this.user_to = user_to;
		this.user_msg = user_msg;
		this.send_time = send_time;
	}
	public String getMsg_id() {
		return msg_id;
	}
	public void setMsg_id(String msg_id) {
		this.msg_id = msg_id;
	}
	public String getUser_from() {
		return user_from;
	}
	public void setUser_from(String user_from) {
		this.user_from = user_from;
	}
	public String getUser_to() {
		return user_to;
	}
	public void setUser_to(String user_to) {
		this.user_to = user_to;
	}
	public String getUser_msg() {
		return user_msg;
	}
	public void setUser_msg(String user_msg) {
		this.user_msg = user_msg;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String send_time) {
		this.send_time = send_time;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
	
}
