package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.MyApointmentModel;

public class MyAppointmentRowMapper implements IRowMapper {

	/*
	 * 
apt_id
goods_id
apt_place
apt_timeS
host_id
customer_id
apt_price
is_ok
isHostOk
isCustomerOk
apt_time
CustomerMsg
HostMsg
	 */
	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		MyApointmentModel m = null;
		try {
			m = new  MyApointmentModel(
					rs.getString("apt_id"),
					rs.getString("goods_id"),
					rs.getString("apt_place"),
					rs.getString("apt_timeS"),
					rs.getString("host_id"),
					rs.getString("customer_id"),
					rs.getString("apt_price"),
					rs.getString("is_ok"),
					rs.getString("isHostOk"),
					rs.getString("isCustomerOk"),
					rs.getString("apt_time"),
					rs.getString("CustomerMsg"),
					rs.getString("HostMsg")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return m;
	}

}
