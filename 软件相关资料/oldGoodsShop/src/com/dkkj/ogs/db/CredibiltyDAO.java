package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.CommnetRowMapper;
import com.dkkj.implement.CredibiltyRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.CommentModel;
import com.dkkj.ogs.model.CredibiltyModel;

public class CredibiltyDAO  extends BaseDAO implements DataAccessObject {
	CredibiltyModel Cm=null;
	@Override
	public int add(Model obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Model getModelById(String id) {
		// TODO Auto-generated method stub
		String sql="select * from tb_usercredibilty where credibilty_id='" +
				id +
				"'";
		List<CredibiltyModel> mdo= super.queryBySql(sql,new CredibiltyRowMapper());
		return mdo.size()==0? null:mdo.get(0);	
	
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		return 0;
	}

}
