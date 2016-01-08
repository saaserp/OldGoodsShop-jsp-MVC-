package com.dkkj.modular.login;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import com.dkkj.absct.BaseDAO;
import com.dkkj.implement.MessageRowMapper;
import com.dkkj.itfs.IRowMapper;
import com.dkkj.ogs.model.MessageModel;

public class LoginDao extends BaseDAO implements LoginService {
	public static boolean isNumbercl(String str){
		Pattern pattern=Pattern.compile("[0~9]*");
		return pattern.matcher(str).matches();
	}
	@Override
	public String login(String name, String pwd) {
		// TODO Auto-generated method stub
		String sql=null;
		if(!isNumbercl(name)){
			sql="select user_id as id from tb_user where user_name='" +
			name +
			"' and user_pwd='" +
			pwd +
			"'";
		}else
			sql="select user_id as id from tb_user where (user_id='" +
			name +
			"' and user_pwd='" +
			pwd +
			"') or (user_name='" +
			name +
			"' and user_pwd='" +
			pwd +
			"')";
		List mdo= super.queryBySql(sql, new IRowMapper(){

			@Override
			public Object mappingRow(ResultSet rs) {
				// TODO Auto-generated method stub
				Map<String,String> map=new HashMap();
				try {
					map.put("user_id",rs.getString("id"));
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return map;
			}

		});
		return ((Map<String,String>)mdo.get(0)).get("user_id").trim();
	}



}
