package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.absct.BaseDAO;
import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.CredibiltyModel;

public class CredibiltyRowMapper  implements IRowMapper{

	@Override
	public Object mappingRow(ResultSet rs) {
		CredibiltyModel dm=null;
		try {
			dm=new CredibiltyModel(rs.getString("credibilty_id"),
					rs.getString("credibilty_name"),
					rs.getString("credibity_image"),
					rs.getString("credibity_describe")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dm;
	}

}
