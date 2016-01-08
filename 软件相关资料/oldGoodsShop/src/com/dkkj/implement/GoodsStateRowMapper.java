package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.GoodsStateModel;

public class GoodsStateRowMapper implements IRowMapper {

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		GoodsStateModel g = null;
		try {
			g = new GoodsStateModel(rs.getString("state"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return g;
	}

}
