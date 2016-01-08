package com.dkkj.itfs;

import com.dkkj.absct.Model;
import com.dkkj.ogs.model.UserModel;

public interface DataAccessObject {
	
	public abstract int add(Model obj);
	public abstract int deleteById(String id);
	/**
	 * 
	 * @param conditionValuse
	 * @param keyName
	 * @param keyValue
	 * @return 执行�?功1或者失败0
	 */
	public abstract int updateById(String conditionValuse,String keyName,String keyValue);
	public abstract Model getModelById(String id);
}
