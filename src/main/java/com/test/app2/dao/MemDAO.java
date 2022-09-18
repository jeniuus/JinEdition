//package com.test.app2.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//import org.springframework.stereotype.Repository;
//
//import com.test.app2.common.JDBCUtil;
//import com.test.app2.vo.MemVO;
//
////@Repository("memDAO") 
//public class MemDAO {
//	private Connection conn=null;
//	private PreparedStatement pstmt=null;
//	private ResultSet rs=null;	
//	
//	private final String MEM_INSERT = "insert into mem values (?,?,?,?,?)";
//	private final String MEM_SELECTONE = "select * from mem where memId=? and memPw=?";
//
//	
//	// [1] insert
//	public void insertMem(MemVO vo) {
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(MEM_INSERT);
//			pstmt.setString(1, vo.getMemId());
//			pstmt.setString(2, vo.getMemPw());
//			pstmt.setString(3, vo.getMemName());
//			pstmt.setString(4, vo.getMemEmail());
//			pstmt.setInt(5, vo.getMemDistin());
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.disconnect(pstmt, conn);
//		}
//	}
//	
//	// [2] selectOne
//	public MemVO getMem(MemVO vo) {
//		MemVO data=null;
//	      conn=JDBCUtil.connect();
//	      try {
//	         pstmt=conn.prepareStatement(MEM_SELECTONE);
//	         pstmt.setString(1, vo.getMemId());
//	         pstmt.setString(2, vo.getMemPw());
//	         rs=pstmt.executeQuery();
//	         if(rs.next()) {
//	            data=new MemVO();
//	            data.setMemId(rs.getString("memId"));
//	            data.setMemName(rs.getString("memPw"));
//	            data.setMemPw(rs.getString("memName"));
//	            data.setMemEmail(rs.getString("memEmail"));
//	            data.setMemDistin(rs.getInt("memDistin"));
//	         }
//	      } catch (SQLException e) {
//	         // TODO Auto-generated catch block
//	         e.printStackTrace();
//	      } finally {
//	         JDBCUtil.disconnect(pstmt, conn);
//	      }
//	      return data;
//	   }
//	
//}
