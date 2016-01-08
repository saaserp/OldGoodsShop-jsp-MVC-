package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.CredibiltyModel;
import com.dkkj.ogs.model.GoodsTypeModel;

public class GoodsTypesRowMapper implements IRowMapper{

	@Override
	public Object mappingRow(ResultSet rs) {
		GoodsTypeModel dm=null;
		try {
			dm=new GoodsTypeModel(rs.getString("type_id"),
					rs.getString("type_name"),
					rs.getString("type_father"),
					rs.getString("isHot")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dm;
	}

}
