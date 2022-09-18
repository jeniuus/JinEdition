package com.test.app2.dao;

//찜DAO    (핵심 : try catch -EmptyResultDataAccessException)


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.test.app2.vo.SavedVO;


@Repository("savedDAO")				
public class SavedDAO2 {				
   @Autowired					
   private JdbcTemplate jdbcTemplate;		
   
   // (1 )찜 추가 ▼
   static String SAVED_INSERT="insert into saved (savedPk,memId,yachtPk) values((select nvl(max(savedPk),4000)+1 from saved),?,?)";//memId,yachtPk   
   // (2) 찜 삭제 ▼
   static String SAVED_DELETE="delete saved where savedPk=?";//savedPk  
   // (3)찜 중복 여부 확인 ▼
   static String SAVED_CHECK="select * from saved where memId=? and yachtPk=?";//memId, yachtPk  
   // (4) 회원1명의 찜목록 전체출력 ▼
   static String SAVED_SELECTALL="select * from saved where memId=? order by savedPk desc";//memId    
   //찜 전체 삭제
   //static String SAVED_ALLDELETE="delete saved where memId=?";
   
   
   // (1) 찜 추가
   public void insertSaved(SavedVO vo) {
	   System.out.println("[DAO2] insertSaved() 호출됨");
	   Object[] args= {vo.getMemId(),vo.getYachtPk()};
	   jdbcTemplate.update(SAVED_INSERT,args);
   }  
   
   // (2) 찜 하나 삭제
   public void deleteSaved(SavedVO vo) {
	   System.out.println("[DAO2] deleteSaved() 호출됨");
	   Object[] args= {vo.getSavedPk()};
	   jdbcTemplate.update(SAVED_DELETE,args);
   }
   
   // (3) 중복체크
   public SavedVO checkSaved(SavedVO vo) {
	   Object[] args= {vo.getMemId(),vo.getYachtPk()};
	   try {
		   return jdbcTemplate.queryForObject(SAVED_CHECK, args,new SavedRowMapper());
	   }
	   catch(EmptyResultDataAccessException e){
		   return null;
	   }
   }
   
   // (4) 회원1명의 찜목록 전체출력
   public List<SavedVO> getSavedList(SavedVO vo) {
	   System.out.println("[DAO2] getSavedList() 호출됨");
	   Object[] args= {vo.getMemId()};
	   return jdbcTemplate.query(SAVED_SELECTALL, args, new SavedRowMapper());
   }
   
   
	  // 회원1명의 찜목록 전체 삭제
// public void deleteAllSaved(SavedVO vo){
//	   System.out.println("deleteAllSaved() 호출");
//	   Object[] args= {vo.getMemId()};
//	   jdbcTemplate.update(SAVED_ALLDELETE,args);
// }
   
}


class SavedRowMapper implements org.springframework.jdbc.core.RowMapper<SavedVO>{

	  @Override
      public SavedVO mapRow(ResultSet rs, int rowNum) throws SQLException {
        SavedVO data=new SavedVO();        
         data.setSavedPk(rs.getInt("savedPk")); //data !
         data.setMemId(rs.getString("memId"));
         data.setYachtPk(rs.getInt("yachtPk"));
         
//         data.setYachtPic(rs.getString("yachtPic"));
//         data.setYachtName(rs.getString("yachtName"));
//         data.setPrice(rs.getString("price"));
//         data.setLocation(rs.getString("location"));
         return data;
   }
	  
   
}