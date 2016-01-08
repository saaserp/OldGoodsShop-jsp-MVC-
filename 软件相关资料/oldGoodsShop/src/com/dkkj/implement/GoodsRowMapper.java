package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.GoodsModel;
import com.dkkj.ogs.model.UserModel;

public class GoodsRowMapper implements IRowMapper {

	@Override
	public Object mappingRow(ResultSet rs) {
		GoodsModel model = null;
		try {
			
			model=new GoodsModel(rs.getString("goods_id"),
					rs.getString("goods_name"),
					rs.getString("goods_price"),
					rs.getString("type_id"),
					rs.getString("goods_image"),
					rs.getString("goods_describe"),
					rs.getString("oldDeep"),
					rs.getString("goods_pre_price"),
					rs.getString("place_id")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}

}
