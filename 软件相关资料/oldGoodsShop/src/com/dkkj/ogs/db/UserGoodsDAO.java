package com.dkkj.ogs.db;

import java.util.List;

import com.dkkj.absct.BaseDAO;
import com.dkkj.implement.GoodsRowMapper;
import com.dkkj.implement.GoodsStateRowMapper;
import com.dkkj.implement.UserRowMapper;
import com.dkkj.itfs.UserOppGoods;
import com.dkkj.ogs.model.GoodsModel;
import com.dkkj.ogs.model.GoodsStateModel;
import com.dkkj.ogs.model.UerGoodsModel;
import com.dkkj.ogs.model.UserModel;

public class UserGoodsDAO extends BaseDAO implements UserOppGoods {

	public int addGoods(String user_id,GoodsModel gm,String state_id){
		//此方法有问题，待解决
		//this.super.updateBySqlandGetRowId(sql);
		UserDAO ud=new UserDAO();
		int goods_id=ud.addGoodsModelandGetRowId(gm);
		String sql="insert into tb_own(user_id,goods_id,state_id) values('" +
		user_id +
		"','" +
		goods_id +
		"','" +
		state_id +
		"')";
		return super.updateBySql(sql);
	}
	@Override
	public int addGoods(String user_id, String goods_id, String goods_stateid) {
		UerGoodsModel md=new UerGoodsModel(user_id, goods_id, goods_stateid);
		String sql="insert into tb_own (user_id,goods_id,state_id) values("
			+"'"+md.getUser_id()+"'"+","+"'"+md.getGoods_id()
			+"'"+","
			+"'"+md.getState_id()+"'"+")";
		return super.updateBySql(sql);

	}

	@Override
	public int modifyGoodsState(String user_id, String goods_id, String state_id) {
		// TODO Auto-generated method stub
		String sql="update tb_own set state_id='" +
		state_id +
		"' where user_id='" +
		user_id +
		"' and goods_id='" +
		goods_id +
		"'";
		return super.updateBySql(sql);
	}
	//将用户的货物下架
	public int down(String userID,String goodsID){
		String sql="update tb_own set tb_own.state_id=4,isLegal=1 where goods_id="+goodsID+" and user_id="+userID;
		return updateBySql(sql);
				
	}
//将用户的货物上架
	public int up(String userID,String goodsID){
		String sql="update tb_own set tb_own.state_id=1 ,isLegal=1 where goods_id="+goodsID+" and user_id="+userID;
		//update tb_own set tb_own.state_id=1,isLegal=1 where goods_id=55 and user_id=8
		return updateBySql(sql);
	}
	//从用户名下移除这个物品
	@Override
	public int removeGoods(String user_id, String goods_id) {
		// TODO Auto-generated method stub
		String sql="delete from tb_own where user_id='" +
		user_id +
		"' and goods_id ='" +
		goods_id +
		"'";
		return super.updateBySql(sql);
	}
	public List<GoodsModel> queryAllOnlineGoods(){
		return super.queryBySql("select * from tb_goods where goods_id in (select goods_id from tb_own where state_id='1' and isLegal='True')", new GoodsRowMapper());
	}
	public List<GoodsModel> queryTop9OnlineGoods(){
		return super.queryBySql("select top 9 * from tb_goods where goods_id in (select goods_id from tb_own where state_id='1' and isLegal='True')", new GoodsRowMapper());
	}
	public List<GoodsModel> getGoodsByUserId(String user_id){

		return super.queryBySql("select * from tb_goods where user_id='" +
				user_id +
				"'", new GoodsRowMapper());

	}
	/**
	 * delete the goods from the shopping car
	 * @param user_id
	 * @param goods_id
	 * @return
	 */
	public int removeGoodsFromCar(String apt_id){
		String sql="delete from tb_appointment where apt_id='" +
				apt_id +
				"'";
		return super.updateBySql(sql);
	}
	public UserModel getUserModelByGoodsId(String goods_id){
		UserModel um=null;
		String sql="select * from tb_user where user_id in (select user_id from tb_own where goods_id ='" +
				goods_id +
				"')";
		List<UserModel> mdo= super.queryBySql(sql,new UserRowMapper());
		return mdo.size()==0? null:mdo.get(0);	
		
	}
	public List<GoodsModel> queryAllAppointment(String user_id){
		String sql="";
		return super.queryBySql("select top 9 * from tb_goods where goods_id in (select goods_id from tb_own where state_id='1' and isLegal='True')", new GoodsRowMapper());
	}
	public List<GoodsModel> getAllMyGoods(String userID){
		System.out.println("用户:"+userID+"请求");
		String sql="select * from tb_goods where goods_id in(select goods_id from tb_own where user_id="+userID+")";
		return super.queryBySql(sql, new GoodsRowMapper());
	}
	//上架
	public int xiajia(String goodsID,String userID){
		String sql="update tb_own set state_id=4 where goods_id="+goodsID+" and user_id="+userID+"";
		return updateBySql(sql);
	}
	public GoodsStateModel getGoodsState(String goodsID,String userID){
	 
		String sql="select state_name as state from tb_goods_state where state_id in (select state_id from tb_own where user_id="+userID+" and goods_id="+goodsID+") ";
		return  (GoodsStateModel) queryBySql(sql, new GoodsStateRowMapper()).get(0);
	}
}
