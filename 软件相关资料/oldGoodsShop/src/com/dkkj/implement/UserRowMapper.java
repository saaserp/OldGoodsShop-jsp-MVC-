package com.dkkj.implement;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dkkj.absct.BaseDAO;
import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.UserModel;

public 	class UserRowMapper extends BaseDAO implements IRowMapper{//

	
	private String getUserType(String type_id){
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="select type_name as type_name from tb_user_types where type_id='" +
				type_id +
				"'";
		List retList=new ArrayList();
		try {
			conn=dbConn.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Map<String,String > map=new HashMap();
				map.put("type_name", rs.getString("type_name"));
				retList.add(map);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			dbConn.closeStatment(stmt);
			dbConn.closeConnection(conn);
		}
		return ((Map<String,String>)retList.get(0)).get("type_name");
	}
	@Override
	public Object mappingRow(ResultSet rs) {
		UserModel model = null;
		try {
			model=new UserModel(
					rs.getString("user_id"),
					rs.getString("user_name"),
					rs.getString("user_pwd"),
					rs.getString("user_phone"),
					rs.getString("user_qq"),
					rs.getString("user_email"),
					rs.getString("user_credibility"),
					rs.getString("user_address"),
					rs.getString("user_age"),
					rs.getString("user_nkname"),
					rs.getString("user_sign"),
					rs.getString("user_image"),
					rs.getString("inrole_time"),
					rs.getString("last_ip"),
					this.getUserType(rs.getString("user_type"))
					
					);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return model;
	}
	
}
