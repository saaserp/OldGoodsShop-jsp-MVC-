package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.SearchModel;

public class SearchRowMapper implements IRowMapper  {

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		SearchModel sm=null;
		try {
			sm=new SearchModel(
					rs.getString("goods_id"),
					rs.getString("goods_name"),
					rs.getString("goods_image"),
					rs.getString("goods_price"),
					rs.getString("user_name"),
					rs.getString("goods_describe"),
					rs.getString("state_name"),
					rs.getString("state_image")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return sm;
		
	}

}
