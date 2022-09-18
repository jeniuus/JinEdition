//package com.test.app2.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.stereotype.Repository;
//
//import com.test.app2.common.JDBCUtil;
//import com.test.app2.vo.YachtVO;
//
////@Repository("YachtDAO") 
//public class YachtDAO {
//	private Connection conn=null;
//	private PreparedStatement pstmt=null;
//	private ResultSet rs=null;	
//	
//	private final String YACHT_INSERT="insert into yacht values((select nvl(max(bid),0)+1 from yacht),?,?,?,?,?,?,?,?,?,?)";
//	private final String YACHT_SELECTONE="select * from yacht where yachtPk=?";
//	// 지역으로 검색해서 리스트 출력
//	private final String YACHT_SELECTALL_LOCATION="select * from yacht where location like '%'||?||'%' order by yachtPk desc";
//	// 으로 검색해서 리스트 출력
//	private final String YACHT_SELECTALL_TYPE="select * from yacht where type like '%'||?||'%' order by yachtPk desc";
//	// 제작연도로 검색 리스트 출력
//	private final String YACHT_SELECTALL_YEAR="select * from yacht where year like '%'||?||'%' order by yachtPk desc";
//
//	// yachtPk로 접근해서 year, loaction만 수정되도록
//	private final String YACHT_UPDATE="update yacht set year=?,location=? where yachtPk=?";
//	private final String YACHT_DELETE="delete yacht where yachtPk=?";
//	
//	
//	
//	public void insertYacht(YachtVO vo) {
//		System.out.println("insertYacht() 호출됨");
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(YACHT_INSERT);
//			pstmt.setString(1, vo.getYachtName());
//			pstmt.setString(2, vo.getYachtPic());
//			pstmt.setString(3, vo.getLocation()); 
//			pstmt.setString(4, vo.getYear()); 
//			pstmt.setString(5, vo.getLength());
//			pstmt.setString(6, vo.getBeam());
//			pstmt.setString(7, vo.getDraft());
//			pstmt.setInt(8, vo.getBerths());
//			pstmt.setInt(9, vo.getCabins());		
//			pstmt.setString(10, vo.getBoatType());
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
//	public YachtVO getYacht(YachtVO vo) {
//		System.out.println("getYacht() 호출됨");
//		YachtVO data=null;
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(YACHT_SELECTONE);
//			pstmt.setInt(1, vo.getYachtPk()); //
//			rs=pstmt.executeQuery();
//			if(rs.next()) {
//				data=new YachtVO();
//				data.setYachtPk(rs.getInt("yachtPk"));
//				data.setYachtName(rs.getString("yachtName"));
//				data.setYachtPic(rs.getString("yachtPic"));
//				data.setLocation(rs.getString("location"));
//				data.setYear(rs.getString("year"));
//				data.setLength(rs.getString("length"));
//				data.setBeam(rs.getString("beam"));
//				data.setDraft(rs.getString("draft"));
//				data.setBerths(rs.getInt("berths"));
//				data.setCabins(rs.getInt("cabins"));				
//				data.setBoatType(rs.getString("boatType"));
//			}
//			rs.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.disconnect(pstmt, conn);
//		}
//		return data;
//	}
//	
//	
//	//[3] selectAll
//	// ★검색★을 위한 비즈니스 메서드를 따로 작성xxx
//	// 인자변경 -> 불리점 => VO에 멤버변수로 추가!
//	// 여기에 분기처리 ㄱㄱ
//	public List<YachtVO> getYachtList(YachtVO vo) {
//		System.out.println("getYachtList() 호출됨");
//		List<YachtVO> datas=new ArrayList<YachtVO>();
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(YACHT_SELECTALL_LOCATION); //기본으로 loacation(위치)으로 검색
//			if(vo.getSearchCondition().equals("year")) {
//				pstmt=conn.prepareStatement(YACHT_SELECTALL_YEAR);
//			}
//			else if(vo.getSearchCondition().equals("type")) {
//				pstmt=conn.prepareStatement(YACHT_SELECTALL_TYPE);
//			}
//			pstmt.setString(1, vo.getSearchKeyword()); //검색키워드
//			rs=pstmt.executeQuery();
//			while(rs.next()) {
//				YachtVO data=new YachtVO();
//				data.setYachtPk(rs.getInt("yachtPk"));
//				data.setYachtName(rs.getString("yachtName"));
//				data.setYachtPic(rs.getString("yachtPic"));
//				data.setLocation(rs.getString("location"));
//				data.setYear(rs.getString("year"));
//				data.setLength(rs.getString("length"));
//				data.setBeam(rs.getString("beam"));
//				data.setDraft(rs.getString("draft"));
//				data.setBerths(rs.getInt("berths"));
//				data.setCabins(rs.getInt("cabins"));				
//				data.setBoatType(rs.getString("boatType"));
//			}
//			rs.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.disconnect(pstmt, conn);
//		}
//		return datas;
//	}
//	
//	
//	public void updateYacht(YachtVO vo) {
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(YACHT_UPDATE);
//			pstmt.setString(1, vo.getYear());
//			pstmt.setString(2, vo.getLocation());
//			pstmt.setInt(3, vo.getYachtPk());
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
//	public void deleteYacht(YachtVO vo) {
//		conn=JDBCUtil.connect();
//		try {
//			pstmt=conn.prepareStatement(YACHT_DELETE);
//			pstmt.setInt(1, vo.getYachtPk());
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
//	
//	
//}
