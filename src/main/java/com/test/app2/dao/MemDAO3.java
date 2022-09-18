package com.test.app2.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.app2.vo.MemVO;

@Repository("memDAO")
public class MemDAO3 {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public MemVO getMem(MemVO vo) {
		System.out.println("getMem() 호출됨");
		return (MemVO)mybatis.selectOne("MemDAO.getMem",vo);
	}
		
	public void insertMem(MemVO vo) {
		System.out.println("insertMem() 호출됨");
		mybatis.insert("MemDAO.insertMem", vo);
	}
	
	public void updateMem(MemVO vo) {
		mybatis.update("MemDAO.updateMem",vo);
	}
	
	public void deleteMem(MemVO vo) {
		mybatis.delete("MemDAO.deleteMem",vo);
	}
	
}
