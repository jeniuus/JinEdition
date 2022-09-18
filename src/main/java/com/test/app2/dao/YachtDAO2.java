//package com.test.app2.dao;
//
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.stereotype.Repository;
//
//import com.test.app2.vo.YachtVO;
//
////@Repository("yachtDAO") //3에서 사용중
//public class YachtDAO2 {
//
//	@Autowired
//	private JdbcTemplate jdbcTemplate;
//
//	private final String YACHT_INSERT="insert into yacht values((select nvl(max(yachtPk),0)+1 from yacht),?,?,?,?,?,?,?,?,?,?,?)";
//	private final String YACHT_SELECTONE="select * from yacht where yachtPk=?";
//	// 지역으로 검색해서 리스트 출력
//	private final String YACHT_SELECTALL_LOCATION = "select * from yacht where location like '%'||?||'%' order by yachtPk desc";
//	// 으로 검색해서 리스트 출력
//	private final String YACHT_SELECTALL_TYPE="select * from yacht where boatType like '%'||?||'%' order by yachtPk desc";
//	// 제작연도로 검색 리스트 출력
//	private final String YACHT_SELECTALL_YEAR="select * from yacht where year like '%'||?||'%' order by yachtPk desc";
//
//	// yachtPk로 접근해서 year, loaction만 수정되도록
//	private final String YACHT_UPDATE="update yacht set year=?,location=? where yachtPk=?";
//	private final String YACHT_DELETE="delete yacht where yachtPk=?";
//
//
//	// [1] 요트추가 (관리자 용)
//	public void insertYacht(YachtVO vo) {
//		System.out.println("insertYacht() 호출됨");
//		// 방법1(여러 개 나열해서 값을 전달)
//		jdbcTemplate.update(YACHT_INSERT, vo.getYachtName(),vo.getYachtPic(),vo.getPrice(),vo.getLocation(),vo.getYear(),vo.getLength(),vo.getBeam(),vo.getDraft(),vo.getBerths(),vo.getCabins(),vo.getBoatType());
//	}
//
//	// [2] 요트 하나 조회
//	public YachtVO getYacht(YachtVO vo) {
//		System.out.println("getYacht() 호출됨");
//		// 방법2(배열로 묶어서 한 번에 값을 전달) 
//		Object[] args= {vo.getYachtPk()};								//파일 하단에 있음
//		return jdbcTemplate.queryForObject(YACHT_SELECTONE, args, new YachtRowMapper());
//	}
//
//	// 전체출력 - 검색 기능 추가
//	public List<YachtVO> getYachtList(YachtVO vo) {
//		System.out.println("getYachtList() 호출됨");
//		return jdbcTemplate.query(YACHT_SELECTALL_LOCATION, new YachtRowMapper());
//	}
//
//	// 요트 수정
//	public void updateYacht(YachtVO vo) {
//		jdbcTemplate.update(YACHT_UPDATE, vo.getYear(),vo.getLocation(),vo.getYachtPk());
//	}
//
//	// 요트 삭제
//	public void deleteYacht(YachtVO vo) {
//		jdbcTemplate.update(YACHT_DELETE, vo.getYachtPk());
//	}
//}
//class YachtRowMapper implements RowMapper<YachtVO> {
//	// 테이블 데이터 -> VO 데이터	//누구랑 매핑할지 제네릭 필요
//	@Override
//	public YachtVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//		YachtVO data=new YachtVO();
//		data.setYachtPk(rs.getInt("yachtPk"));
//		data.setYachtName(rs.getString("yachtName"));
//		data.setYachtPic(rs.getString("yachtPic"));
//		data.setPrice(rs.getString("price"));
//		data.setLocation(rs.getString("location"));
//		data.setYear(rs.getString("year"));
//		data.setLength(rs.getString("length"));
//		data.setBeam(rs.getString("beam"));
//		data.setDraft(rs.getString("draft"));
//		data.setBerths(rs.getInt("berths"));
//		data.setCabins(rs.getInt("cabins"));
//		data.setBoatType(rs.getString("boatType"));
//		return data;
//	}	
//
//}
//
