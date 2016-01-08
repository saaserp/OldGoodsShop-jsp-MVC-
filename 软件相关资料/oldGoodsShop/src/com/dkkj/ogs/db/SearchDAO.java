package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.SearchRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.SearchModel;

public class SearchDAO extends BaseDAO implements DataAccessObject{
private SearchModel sm;
	@Override
	public int add(Model obj) {
		// TODO Auto-generated method stub
		sm=(SearchModel)obj;
		
		return 0;
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Model getModelById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<SearchModel> getAllSearchByKeyWord(String keyword){
		String sql="select t3.goods_id,t3.goods_name,goods_image,goods_price,user_name," +
				"goods_describe,state_name,state_image " +
				"from tb_goods as t3,(select t1.goods_id," +
				"t1.state_id,user_name from(select * from " +
				"tb_own where goods_id in(select goods_id from " +
				"tb_goods where goods_name like '%"+keyword+"%' or goods_describe like '%"+keyword+"%' or type_id in (select type_id from tb_goods_types where type_name like '%"+keyword+"%'))) " +
						"as t1,tb_user as t2 where t1.user_id=t2.user_id) " +
						"as t4,tb_goods_state as t5 where t3.goods_id=t4.goods_id " +
						"and t5.state_id=t4.state_id";
		 return super.queryBySql(sql,new SearchRowMapper());
	}

}
