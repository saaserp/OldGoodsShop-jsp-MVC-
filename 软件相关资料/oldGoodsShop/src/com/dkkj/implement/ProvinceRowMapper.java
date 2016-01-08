package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.AppointmentModel;
import com.dkkj.ogs.model.ProvinceModel;

public class ProvinceRowMapper implements IRowMapper  {

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		ProvinceModel province=null;
		try {
			province=new ProvinceModel(
					rs.getString("province_id"),
					rs.getString("province_name")
					
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return province;
	}

}
