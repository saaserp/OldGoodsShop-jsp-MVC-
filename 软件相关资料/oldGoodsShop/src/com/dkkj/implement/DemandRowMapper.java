package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.DemandModel;

public class DemandRowMapper implements IRowMapper{

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		DemandModel dm=null;
		try {
			dm=new DemandModel(rs.getString("user_id"),
					rs.getString("demand_name"),
					rs.getString("demand_describe"), 
					rs.getString("demand_price"),
					rs.getString("type_id"),
					rs.getString("add_time")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dm;
	}

}
