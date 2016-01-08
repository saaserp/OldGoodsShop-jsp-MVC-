package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.ProvinceModel;
import com.dkkj.ogs.model.SchoolModel;

public class SchoolRowMapper implements IRowMapper{

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		SchoolModel school=null;
		try {
			school=new SchoolModel(
					rs.getString("school_id"),
					rs.getString("school_name")
					
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		return school;
	}

}
