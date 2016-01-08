package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.SchoolRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.SchoolModel;

public class SchoolDAO extends BaseDAO implements DataAccessObject{

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
		System.out.println("schoolid"+id);
		String sql="select * from tb_school where school_id="+id;
		return    (Model) queryBySql(sql, new SchoolRowMapper()).get(0);
	}

	public List<SchoolModel> getAllSchool(){
		String sql="select * from tb_school";
		return super.queryBySql(sql, new SchoolRowMapper());
	}
		
	public List<SchoolModel> getAllSchoolByProvinceId(String id){
		String sql="select * from tb_school";
		return super.queryBySql(sql, new SchoolRowMapper());
	}
}
