package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.MyAppointmentRowMapper;
import com.dkkj.itfs.DataAccessObject;

public class MyAppointDao extends BaseDAO implements DataAccessObject{

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
	//获取自己的所有的预约（卖家）
	public List<Model>getMyAppointment(String userID){
		String sql="select * from tb_appointment where host_id="+userID;
		return super.queryBySql(sql, new MyAppointmentRowMapper());
		
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

}
