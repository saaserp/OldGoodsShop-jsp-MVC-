package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.AppointmentModel2;

public class AppointmentRowMapper2 implements IRowMapper {

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		AppointmentModel2 model = null;
		try {
			model=new AppointmentModel2(
					rs.getString("apt_id"),					
					rs.getString("goods_id"), 
					rs.getString("goods_name"), 
					rs.getString("goods_image"),
					rs.getString("customer_id"),
					rs.getString("host_id"),
					rs.getString("host_name"),					
					rs.getString("apt_timeS"),
					rs.getString("apt_place"),
					rs.getString("apt_price"),
					rs.getString("customerMsg"),
					rs.getString("hostMsg"),
					rs.getString("is_ok"),
					rs.getString("isCustomerOk"),
					rs.getString("isHostOk")			
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}

	

}
