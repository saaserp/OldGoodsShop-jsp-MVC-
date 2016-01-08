package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.absct.Model;
import com.dkkj.implement.AppointmentRowMapper2;
import com.dkkj.implement.GoodsRowMapper;
import com.dkkj.itfs.DataAccessObject;
import com.dkkj.ogs.model.AppointmentModel;
import com.dkkj.ogs.model.AppointmentModel2;
import com.dkkj.ogs.model.UserModel;

public class AppointmentDAO extends BaseDAO implements DataAccessObject{

	 
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
	public AppointmentModel getModelById(String id) {
		// TODO Auto-generated method stub
	
		return null;
	}

	@Override
	public int updateById(String conditionValuse, String keyName,
			String keyValue) {
		// TODO Auto-generated method stub
		return 0;
	}
	public int setCustomerOK(String arg,String aptID){
		String sql="update tb_appointment set tb_appointment.isCustomerOk="+arg+" where apt_id="+aptID;
		return updateBySql(sql);
	}
	public int setHostOK(String arg,String aptID){
		String sql="update tb_appointment set tb_appointment.isHostOk="+arg+" where apt_id="+aptID;
		return updateBySql(sql);
	}
	public List<AppointmentModel2> getAppointList(String user_id){
		
		String sql="select t1.apt_id,t1.goods_id,t3.goods_name,goods_image,customer_id,host_id,t2.user_name as host_name,t1.apt_timeS,t1.apt_place,t1.apt_price,t1.CustomerMsg,t1.HostMsg,t1.is_ok,t1.isCustomerOk,t1.isHostOk from tb_appointment as t1, tb_user as t2, tb_goods as t3 where t1.host_id=t2.user_id and t1.goods_id=t3.goods_id and customer_id='" +
				user_id +
				
				"'";				
		return super.queryBySql(sql, new AppointmentRowMapper2());
		
	}
	public int deleApointment(String aptID){
		String sql="delete tb_appointment where apt_id="+aptID;
		return super.updateBySql(sql);
		
	}
	
	

}
