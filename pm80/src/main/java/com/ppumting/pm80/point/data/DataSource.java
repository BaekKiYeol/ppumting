package com.ppumting.pm80.point.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataSource {
	private String jdbcDriver;
	private String jdbcUrl;
	private String jdbcUserName;
	private String jdbcPassWord;
	
	public DataSource(String jdbcDriver,String jdbcUrl, String jdbcUserName, String jdbcPassWord) {
		super();
		this.jdbcDriver = jdbcDriver;
		this.jdbcUrl = jdbcUrl;
		this.jdbcUserName = jdbcUserName;
		this.jdbcPassWord = jdbcPassWord;
		
	      try {
	          Class.forName(jdbcDriver);
	       }catch(ClassNotFoundException e) {
	          throw new RuntimeException("JdbcNotFoundException");
	       }
	}
	
	
	public Connection getConnection() {
		try {
			return DriverManager.getConnection(jdbcUrl, jdbcUserName, jdbcPassWord);
		} catch (SQLException e) {
			throw new RuntimeException("ConnectionNotAvailableException");
		}
	}
	

	public void close(ResultSet rs, PreparedStatement pstmt, Connection con) throws SQLException {
		if(rs != null && !rs.isClosed()) {
			rs.close();
		}
		if(pstmt !=null && !pstmt.isClosed()) {
			pstmt.close();
		}
		if(con != null && !con.isClosed()) {
			con.close();
		}
	}
	
	public void close(PreparedStatement pstmt, Connection con) throws SQLException{
		close (null, pstmt, con);
	}
	
}


