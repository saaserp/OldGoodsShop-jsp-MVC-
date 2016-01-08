package com.dkkj.itfs;

import java.sql.ResultSet;

public interface IRowMapper{
	public Object mappingRow(ResultSet rs);
}
