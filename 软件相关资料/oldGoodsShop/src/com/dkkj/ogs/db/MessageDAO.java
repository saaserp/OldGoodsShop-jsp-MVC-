package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.GoodsRowMapper;
import com.dkkj.implement.MessageRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.MessageModel;
import com.dkkj.ogs.model.UserModel;

public class MessageDAO extends BaseDAO implements DataAccessObject{
	private MessageModel message=null;
	@Override
	public int add(Model obj) {
		// TODO Auto-generated method stub
		message=(MessageModel)obj;
		String sql="insert into tb_msg(user_from,user_to,user_msg) values('" +
		message.getUser_from() +
		"','" +
		message.getUser_to() +
		"','" +
		message.getUser_msg() +
		"')";
		return super.updateBySql(sql);
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_msg where msg_id='" +
		id.trim() +
		"'";
		return super.updateBySql(sql);
	}

	@Override
	public Model getModelById(String id) {
		// TODO Auto-generated method stub
		List<MessageModel> mdo= super.queryBySql("select * from tb_msg where msg_id='"+id+"'" ,new MessageRowMapper());
		return mdo.size()==0? null:mdo.get(0);		
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		String sql="update tb_msg set "+keyName+"='" +
		keyValue +
		"' where msg_id='" +
		conditionValuse +
		"'";
		return super.updateBySql(sql);
	}
	
	public List<MessageModel> queryAll(){
		return super.queryBySql("select * from tb_msg", new MessageRowMapper());
	}

}
