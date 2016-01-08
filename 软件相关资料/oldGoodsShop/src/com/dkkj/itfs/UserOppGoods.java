package com.dkkj.itfs;

public interface UserOppGoods {
	/**
	 * 提供用户操作物品的一个接口
	 * @param user_id
	 * @param goods_id
	 * @param goods_stateid 物品的状态
	 * @return
	 */
	public int addGoods(String user_id,String goods_id,String goods_stateid);
	/**
	 * 删除用户的物品
	 * @param user_id
	 * @param goods_id
	 * @return
	 */
	public int removeGoods(String user_id,String goods_id);
	/**
	 * 修改用户物品状态
	 * @param user_id
	 * @param goods_id
	 * @param state_id
	 * @return
	 */
	public int modifyGoodsState(String user_id,String goods_id,String state_id);
}

