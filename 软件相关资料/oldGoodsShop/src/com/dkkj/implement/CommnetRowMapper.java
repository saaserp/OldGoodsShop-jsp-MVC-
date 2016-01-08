package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.CommentModel;

public class CommnetRowMapper implements IRowMapper{

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		CommentModel cm=null;
		try {
			cm=new CommentModel(rs.getString("own_id"), rs.getString("user_id"), rs.getString("type_id"), rs.getString("comment_msg"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cm;
	}

}
