package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.AppointmentModel;

public class AppointmentRowMapper implements IRowMapper {

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		AppointmentModel app=null;
		try {
			app=new AppointmentModel(
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
					rs.getString("CustimerMsg"),
					rs.getString("HostMsg")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return app;
	}

}
