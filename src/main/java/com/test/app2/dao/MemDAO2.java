//package com.test.app2.dao;
//
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.stereotype.Repository;
//
//
//import com.test.app2.vo.MemVO;
//
////@Repository("memDAO")
//public class MemDAO2 {
//	
//	@Autowired
//	private JdbcTemplate jdbcTemplate;
//	private final String MEM_INSERT = "insert into mem values (?,?,?,?,?)";
//	private final String MEM_SELECTONE = "select * from mem where memId=? and memPw=?";
//	private final String MEM_UPDATE="update mem set memPw=?,memName=?,memEmail=? where memId=?";
//	private final String MEM_DELETE="delete mem where memId=?";	
//
//	//회원추가 (회원가입)
//	public void insertMem(MemVO vo) {
//		jdbcTemplate.update(MEM_INSERT,vo.getMemId(),vo.getMemPw(),vo.getMemName(),vo.getMemEmail(),vo.getMemDistin());
//	}
//
//	//1명조회 (로그인)
//	public MemVO getMem(MemVO vo) {
//		System.out.println("Advice 동작시점: getMem() 수행됨");
//		Object[] args= {vo.getMemId(),vo.getMemPw()};
//		return jdbcTemplate.queryForObject(MEM_SELECTONE, args, new MemRowMapper());
//	}
//	
//	// 회원정보수정
//	public void updateMem(MemVO vo) {
//		jdbcTemplate.update(MEM_UPDATE,vo.getMemPw(),vo.getMemName(),vo.getMemEmail(),vo.getMemId());
//	}
//	
//	//회원삭제(탈퇴)
//	public void deleteMem(MemVO vo) {
//		jdbcTemplate.update(MEM_DELETE,vo.getMemId());
//	}
//}
//
//class MemRowMapper implements RowMapper<MemVO> {
//
//	@Override
//	public MemVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//		MemVO data=new MemVO();
//		data.setMemId(rs.getString("memId"));
//		data.setMemPw(rs.getString("memPw"));
//		data.setMemName(rs.getString("memName"));
//		data.setMemEmail(rs.getString("memEmail"));
//		data.setMemDistin(rs.getInt("memDistin"));
//		return data;
//	}
//}