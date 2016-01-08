package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.DemandRowMapper;
import com.dkkj.implement.MessageRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.DemandModel;
import com.dkkj.ogs.model.MessageModel;

public class DemandDAO extends BaseDAO implements DataAccessObject {
	private DemandModel dm=null;
	@Override
	public int add(Model obj) {
		// TODO Auto-generated method stub
		dm=(DemandModel)obj;
		String sql="insert into tb_demand(user_id," +
				"demand_name," +
				"demand_describe," +
				"demand_price," +
				"type_id)values('" +
				dm.getUser_id() +
				"','" +
				dm.getDemand_name() +
				"','" +
				dm.getDemand_price() +
				"','" +
				dm.getDemand_describe() +
				"','" +
				dm.getType_id() +
				"')";
		return super.updateBySql(sql);
	}

	@Override
	public int deleteById(String id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_demand where demand_id='" +
				id +
				"'";
		return super.updateBySql(sql);
	}

	@Override
	public Model getModelById(String id) {
		// TODO Auto-generated method stub
		List<DemandModel> mdo= super.queryBySql("select * from tb_demend " +
				"where demend_id='"+id+"'" ,new DemandRowMapper());
		return mdo.size()==0? null:mdo.get(0);	
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		String sql="update tb_demand set "+keyName+"='" +
				keyValue +
				"'"
				+"where demand_id="+conditionValuse
				;
		return 0;
	}
	public List<DemandModel> queryAll(){
		return super.queryBySql("select * from tb_demand", new DemandRowMapper());
	}
	public List<DemandModel> queryNew14(){
		String sql="select top 14 * from tb_demand order by add_time desc";
		return super.queryBySql(sql, new DemandRowMapper());
	}
	public List<DemandModel>  queryMyDemandNew5(String id){
		String sql="select top 5 * from tb_demand where user_id="+id+" order by add_time desc ";
		return super.queryBySql(sql, new DemandRowMapper());
		
	}

}
