//package com.test.app2.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import com.test.app2.common.JDBCUtil;
//import com.test.app2.vo.SavedVO;
//
////import org.springframework.stereotype.Repository;
//
////@Repository("savedDAO") 
//public class SavedDAO<BoardVO> {
//	private Connection conn=null;
//	private PreparedStatement pstmt=null;
//	private ResultSet rs=null;		
//	
//	//(1)찜목록에 추가
//	private final String SAVED_INSERT = "insert into saved values((select nvl(max(savedPk),4000)+1 from saved),?,?)";
//	
//	//(2)찜목록 중 하나 조회
//	//private final String SAVED_SELECTONE = "select * from saved where savedPk=?";	
//	
//	//(3)찜목록 전체 조회
//	private final String SAVED_SELECTALL = "select s.savedPk, m.memId, y.yachtPk, y.yachtName, y.price from mem m, yacht y, saved s"
//			+ " where y.yachtPk=s.yachtPk and s.memId=? order by savedPk desc";
//													 // ? -> m.memId -> pstmt.setString(1, vo.getMemId());
//	//(4)찜목록 중 하나 삭제
//	private final String SAVED_DELETE = "delete saved where savedPk=?";
//	
//	//---------------------------------------------------------------------------------
//	// (1) 찜목록에 추가
//	public void insertSaved(SavedVO vo) {
//		System.out.println("insertSaved() 호출됨");
//		conn=JDBCUtil.connect();		
//		try {
//			pstmt=conn.prepareStatement(SAVED_INSERT);
//			pstmt.setString(1, vo.getMemId());
//			pstmt.setInt(2, vo.getSavedPk());
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.disconnect(pstmt, conn);
//		}
//	}		
//	
//	// (2) 찜목록 중 하나 조회
//	//public SavedVO getSaved(SavedVO vo) {		
//	//}
//	
//	// (3) (특정 회원의)찜목록 전체 조회
//	public List<SavedVO> getSavedList(SavedVO vo){
//		System.out.println("getSavedList() 호출됨");
//		List<SavedVO> datas = new ArrayList<SavedVO>();
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(SAVED_SELECTALL);
//			pstmt.setString(1, vo.getMemId()); // ? 자리에 memId
//			ResultSet rs=pstmt.executeQuery();
//			// rs한 개를 vo로 바꾸어 저장하고, 그걸 datas에 덮어쓰기
//			while(rs.next()) {
//				//찜된요트가 여러 개 존재하니 new도 여러 번 진행
//				SavedVO data=new SavedVO(); // ☆				
//				data.setSavedPk(rs.getInt("savedPk"));
//				data.setMemId(rs.getString("memId"));
//				data.setYachtPk(rs.getInt("yachtPk"));
//				data.setYachtName(rs.getString("yachtName"));
//				data.setPrice(rs.getString("price"));				
//				datas.add(data);
//			}
//			rs.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		JDBCUtil.disconnect(pstmt, conn);
//		return datas;
//	}
//	
//	// (4)찜목록 중 하나 삭제
//	public void deleteSaved(SavedVO vo) {
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(SAVED_DELETE);
//			pstmt.setInt(1, vo.getSavedPk());
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.disconnect(pstmt, conn);
//		}
//	}
//	
//	
//}
