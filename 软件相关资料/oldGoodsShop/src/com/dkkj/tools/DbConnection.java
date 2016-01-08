package com.dkkj.tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnection {
	/**
	 * 加载驱动
	 */
	static {
		try {
			
			Class.forName(Constant.sqlClassForName);
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	//数�?�库连接地�?�
	private String url=Constant.sqlserver;
	//数�?�库用户�??
	private String userName=Constant.sqlUserName;
	//数�?�库密�?
	private String password=Constant.sqlPwd;
	/**
	 * 获得数�?�库连接
	 * @return
	 * @throws SQLException
	 */
	public Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url,userName,password);
	}
	/**
	 * 关闭数�?�库连接
	 * @param conn
	 */
	public void closeConnection(Connection conn){
		if(conn!=null)
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	/**
	 * 关闭执行SQL语�?�的对象Statement
	 * @param stmt
	 */
	public void closeStatment(Statement stmt){
		if(stmt!=null)
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	/**
	 * 关闭结果集
	 * @param rs
	 */
	public void closeResultSet(ResultSet rs){
		if(rs!=null)
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}
}
