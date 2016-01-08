package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.GoodsRowMapper;
import com.dkkj.implement.UserRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.GoodsModel;
import com.dkkj.ogs.model.UserModel;

public class GoodsDAO extends BaseDAO implements DataAccessObject {
	private GoodsModel md=null;
	@Override
	public int add(Model model) {
		// TODO Auto-generated method stub
		md=(GoodsModel)model;
		String sql="insert into tb_goods(goods_name,goods_price,type_id,goods_image,goods_describe,place_id)" +
		" values('" +
		md.getGoods_name() +
		"','" +
		md.getGoods_price() +
		"','" +
		md.getType_id() +
		"','" +
		md.getGoods_image() +
		"','" +
		md.getGoods_describe() +
		"','"+md.getPlace_id()+"' )";
		return super.updateBySql(sql);
	}

	@Override
	public int deleteById(String id) {
		id=id.trim();
		String sql="delete tb_goods where goods_id=" +
		"'" +
		id+
		"'";
		return super.updateBySql(sql);

	}

	@Override
	public Model getModelById(String id) {
		List<GoodsModel> mdo= super.queryBySql("select * from tb_goods " +
				"where goods_id='"+id+"'" ,new GoodsRowMapper());
		return mdo.size()==0? null:mdo.get(0);	
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		String sql="update tb_goods set "+keyName+"=" +
		"'" +
		keyValue+
		"'"+
		"where goods_id"+
		"=" +
		"'" +
		conditionValuse+
		"'";

		return super.updateBySql(sql);
	}
	/**
	 * 查询所有的商品
	 * @return
	 */
	public List<UserModel> queryAll(){
		return super.queryBySql("select * from tb_goods", new GoodsRowMapper());
	}
	
}
