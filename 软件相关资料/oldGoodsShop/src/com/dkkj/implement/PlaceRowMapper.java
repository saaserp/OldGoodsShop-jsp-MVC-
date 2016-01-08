package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.PlaceModel;
import com.dkkj.ogs.model.SchoolModel;

public class PlaceRowMapper implements IRowMapper{

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		PlaceModel place=null;
		try {
			place=new PlaceModel(
					rs.getString("place_id"),
					rs.getString("province_id"),
					rs.getString("school_id")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return place;
	}

}
