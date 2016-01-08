package com.dkkj.ogs.db;

import com.dkkj.ogs.model.GoodsModel;

public class Buyer extends UserGoodsDAO{
	private String userid=null;
	public Buyer(String userid){
		this.userid=userid;
	}
	/**
	 * 
	 * @param goodsId
	 * @param apt_place
	 * @param apt_timeS
	 * @param apt_timeE
	 * @param hostId
	 * @param apt_price
	 * @param exMsg
	 * @return
	 */
	public int addAppointment(String goodsId,String apt_place,String apt_timeS,String hostId,String apt_price,String exMsg){
		String sql="insert into tb_appointment(" +
		"goods_id," +
		"apt_place," +
		"apt_timeS," +
		"customer_id," +
		"host_id," +
		"apt_price," +
		"is_ok," +
		"isHostOk," +
		"isCustomerOk," +
		"CustomerMsg)"+
		"values('" +
		goodsId +
		"','" +
		apt_place +
		"','" +
		apt_timeS +
		"','" +
	
		userid +
		"','" +
		hostId +
		"','" +
		apt_price +
		"','" +
		"0"+
		"','" +
		"0" +
		"','" +
		"1" +
		"','" +
		exMsg+
		"')";
		return super.updateBySql(sql);

	}
	public int removeAppointment(String apt_id){
		return super.removeGoodsFromCar(apt_id);
	}
	public int commenBussinees(){
		String sql="";
		return 0;
	}


}
