package com.dkkj.implement;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.MessageModel;

public class MessageRowMapper implements IRowMapper {

	@Override
	public Object mappingRow(ResultSet rs) {
		// TODO Auto-generated method stub
		MessageModel message=null;
		try {
			message=new MessageModel(rs.getString("user_from"),
					rs.getString("user_to"),
					rs.getString("user_msg")
					);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return message;
	}

}
