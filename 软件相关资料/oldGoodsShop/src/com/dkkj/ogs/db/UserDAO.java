package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.UserRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.GoodsModel;
import com.dkkj.ogs.model.UserModel;

public class UserDAO extends BaseDAO implements DataAccessObject{
	private UserModel md=null;
	
	@Override
	public int add(Model model){
		md=(UserModel)model;
		String sql="insert into tb_user(user_name,user_email,user_pwd,user_type,last_ip) values("
			+"'"+md.getUser_name()+"'"+","+"'"+md.getUser_email()+"'"+","
			+"'"+md.getUser_pwd()+"'"+",'" +
					md.getUser_type() +
					"','" +
					md.getLast_ip() +
					"')";
		return super.updateBySql(sql);
		
	}
	public int addGoodsModelandGetRowId(GoodsModel model){
	
//		String sql="insert into tb_user(user_name,user_email,user_pwd) values("
//			+"'"+md.getUser_name()+"'"+","+"'"+md.getUser_email()+"'"+","
//			+"'"+md.getUser_pwd()+"'"+")";
		String sql="insert into tb_goods(" +				
				"goods_name," +
				"goods_price," +
				"type_id," +
				"goods_image," +
				"goods_describe,place_id,oldDeep) " +
				"values('" +
				model.getGoods_name() +
				"','" +
				model.getGoods_price() +
				"','" +
				model.getType_id() +
				"','" +
				model.getGoods_image() +
				"','" +
				model.getGoods_describe() +
				"','"+model.getPlace_id()+"','"+model.getOldDeep()+"')";
		
		return super.updateBySqlandGetRowId(sql);
		
	}
	
	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		id=id.trim();
		String sql="delete tb_user where user_id=" +
				"'" +
				id+
				"'";
		return super.updateBySql(sql);
	}

	@Override
	public int updateById(String conditionValue, String keyName,String keyValue) {
		// TODO Auto-generated method stub
		
			String sql="update tb_user set "+keyName+"=" +
					"'" +
					keyValue+
					"'"+
					"where user_id"+
					"=" +
					"'" +
					conditionValue+
					"'";
			
			return super.updateBySql(sql);
				
	
	}
	
	@Override
	public UserModel getModelById(String id) {
		// TODO Auto-generated method stub
		List<UserModel> mdo= super.queryBySql("select * from tb_user where user_id='"+id+"' " ,new UserRowMapper());
		return mdo.size()==0? null:mdo.get(0);		
	}
	/**
	 * 查询全部用户
	 * @return
	 */
	public List<UserModel> queryAll(){
		return super.queryBySql("select * from tb_user", new UserRowMapper());
	}
	

	
	

}
