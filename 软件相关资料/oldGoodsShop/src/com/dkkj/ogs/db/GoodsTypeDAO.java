package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.GoodsRowMapper;
import com.dkkj.implement.GoodsTypesRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.GoodsTypeModel;

public class GoodsTypeDAO extends BaseDAO implements DataAccessObject{
private GoodsTypeModel gt=null;
	@Override
	public int add(Model obj) {
		// TODO Auto-generated method stub
		gt=(GoodsTypeModel)obj;
		String sql="insert into tb_goods_types(type_name,type_father,isHot)values('" +
				gt.getType_name() +
				"','" +
				gt.getType_father() +
				"','" +
				gt.getIsHot() +
				"')";
		
		return super.updateBySql(sql);
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Model getModelById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	public GoodsTypeModel getTypeById(String id){
		String sql="select * from tb_goods_types where type_id="+id;
		return (GoodsTypeModel) super.queryBySql(sql, new GoodsTypesRowMapper()).get(0);
		
	}
	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		return 0;
	}
	public List getAllFatherTypes(){
		return super.queryBySql("select * from tb_goods_types where type_father='0'", new GoodsTypesRowMapper());
	}
	public List getAllSonTypes(String id){
		 return super.queryBySql("select * from tb_goods_types where type_father='" +
		 		id +
		 		"'", new GoodsTypesRowMapper());
		 
	}
}
