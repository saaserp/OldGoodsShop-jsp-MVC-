package com.dkkj.absct;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

import com.dkkj.itfs.IRowMapper;
import com.dkkj.tools.DbConnection;
import java.sql.PreparedStatement;

public abstract class BaseDAO {
	/**
	 * 执行增删改等�?作，�?返回结果集
	 * @param sql
	 * @return 影�?记录的行数
	 */
	protected DbConnection dbConn;
	public BaseDAO() {
		dbConn=new DbConnection();
	}
	/**
	 * 插入一条记录并返回插入的行id
	 * @return 插入的行id
	 */
	public int updateBySqlandGetRowId(String sql){
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int id=-1;
		try {
			conn=dbConn.getConnection();
			ps=conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ps.executeUpdate();
			rs=ps.getGeneratedKeys();
			while(rs.next()){
				id=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			id=-1;
			e.printStackTrace();
		} finally{
			//dbConn.closeStatment(stmt);
			dbConn.closeConnection(conn);
		}
		return id;
		
	}
	public int updateBySql(String sql){
		Connection conn=null;
		Statement stmt=null;
		try {
			conn=dbConn.getConnection();
			stmt=conn.createStatement();

			return stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return -1;

		}finally{
			dbConn.closeStatment(stmt);
			dbConn.closeConnection(conn);
		}


	}

	/**
	 * 查询
	 * @param sql
	 * @param mapper
	 * @return
	 */
	public List queryBySql(String sql,IRowMapper mapper){
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		List retList=new ArrayList();
		try {
			conn=dbConn.getConnection();
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				Object obj=mapper.mappingRow(rs);
				retList.add(obj);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			dbConn.closeStatment(stmt);
			dbConn.closeConnection(conn);
		}
		return retList;


	}



}
