package com.dkkj.ogs.db;

public class Seller extends UserGoodsDAO {
	String userId=null;
	public Seller(String userId){
		this.userId=userId;		
	}
	public int acceptAppointment(String apt_id,String arg,String msg){
		String sql="update tb_appointment set isHostOk="+arg+",HostMsg='" +
		msg +
		"' where apt_id="+apt_id;
		
		return super.updateBySql(sql);
	}
	public int cancerAppointment(String apt_id,String msg){
		String sql="update tb_appointment set isHostOk='1',HostMsg='" +
		msg +
		"' where apt_id='" +
		apt_id +
		"'";
		return super.updateBySql(sql);
	}
	public int agreeSell(String apt_id){
		int process=0;
		String sql1="update tb_appointment set is_ok='1' where apt_id='" +
				apt_id +
				"' and host_id='" +
				this.userId +
				"'";
		 
		 String sql2="insert into tb_sell(host_id,customer_id,goods_id,sell_price,sell_place) select host_id,customer_id,goods_id,apt_price,apt_place from tb_appointment where apt_id='" +
		 		apt_id +
		 		"'";
		 String sql3="update tb_own set state_id='3' where user_id='" +
		 		userId +
		 		"'" +
		 		"and goods_id in (select goods_id  from tb_appointment where apt_id='"+
		 		apt_id+
		 		"')";
		 int flag=0;
		 flag=super.updateBySql(sql1);
		 if(flag==1){
			 flag=super.updateBySql(sql2);
		 }if(flag==1)
		 flag=super.updateBySql(sql3) ;
		 return flag;
		
	}
	
}
