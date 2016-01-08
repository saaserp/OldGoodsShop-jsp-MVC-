package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.CommnetRowMapper;
import com.dkkj.implement.DemandRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.CommentModel;
import com.dkkj.ogs.model.DemandModel;

public class CommentDAO extends BaseDAO implements DataAccessObject{
	CommentModel cm;
	@Override
	public int add(Model obj) {
		// TODO Auto-generated method stub
		cm=(CommentModel)obj;
		String sql="insert into tb_comment(own_id,user_id,type_id,comment_msg) values('" +
		cm.getOwn_id() +
		"','" +
		cm.getUser_id() +
		"','" +
		cm.getType_id() +
		"','" +
		cm.getComment_msg() +
		"')";
		return super.updateBySql(sql);
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_comment where comment_id='" +
		id +
		"'";
		return 0;
	}

	@Override
	public Model getModelById(String id) {
		// TODO Auto-generated method stub
		List<CommentModel> mdo= super.queryBySql("select * from tb_comment " +
				"where comment_id='"+id+"'" ,new CommnetRowMapper());
		return mdo.size()==0? null:mdo.get(0);	
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		String sql="update tb_comment where "+keyName+"='" +
		keyValue +
		"' where comment_id='" +
		conditionValuse +
		"'" ;
		return super.updateBySql(sql);
	}

}
