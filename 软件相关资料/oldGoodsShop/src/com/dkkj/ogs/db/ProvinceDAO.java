package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.ProvinceRowMapper;
import com.dkkj.implement.SchoolRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.ProvinceModel;
import com.dkkj.ogs.model.SchoolModel;

public class ProvinceDAO extends BaseDAO implements DataAccessObject{

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
	public List<ProvinceModel> getAllProvince(){
		String sql="select * from tb_province";
		return super.queryBySql(sql, new ProvinceRowMapper());
		
	}
	public List<SchoolModel> getAllSchoolByProvinceId(String id){
		String sql="select * from tb_school where school_id in ( select school_id from tb_place where province_id='"
				+ id
				+ "')";
		return super.queryBySql(sql, new SchoolRowMapper());
	}

}
