package com.test.app2.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

// ★UTIL: "연결하고 해제하는 코드"가 반복되니깐 한 곳에 따로 관리하려고 생성한 것임!
public class JDBCUtil {
	static final String driverName = "oracle.jdbc.driver.OracleDriver"; //로드
	static final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	static final String user = "jin";
	static final String passwd = "1234"; //연결//여기까지 "자원 준비"
	
	// connection확보(==DB에 연결) 작업
	public static Connection connect() { 
		Connection conn=null;
		try {
			Class.forName(driverName); //로드
			conn=DriverManager.getConnection(url, user, passwd);//연결
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn; //Connection 객체 반환
	}
	
	// conn, stmt 닫는 메서드
	public static void disconnect(PreparedStatement pstmt,Connection conn) {
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
