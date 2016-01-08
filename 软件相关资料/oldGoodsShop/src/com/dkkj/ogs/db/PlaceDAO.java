package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.PlaceRowMapper;
import com.dkkj.implement.SchoolRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.PlaceModel;
import com.dkkj.ogs.model.SchoolModel;

public class PlaceDAO extends BaseDAO implements DataAccessObject{

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

	public List<PlaceModel> getAllSchoolByProvinceId(String id){
		String sql="select * from tb_place";
		return super.queryBySql(sql, new PlaceRowMapper());
	}
}
