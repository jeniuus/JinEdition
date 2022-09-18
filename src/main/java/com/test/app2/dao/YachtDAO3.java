package com.test.app2.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.app2.vo.YachtVO;


@Repository("yachtDAO")
public class YachtDAO3 {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	
	public void insertYacht(YachtVO vo) {
		System.out.println("insertYach() 호출됨");
		mybatis.insert("YachtDAO.insertYacht",vo);
	}
	public YachtVO getYacht(YachtVO vo) {
		System.out.println("getYachtd() 호출됨");
		return (YachtVO)mybatis.selectOne("YachtDAO.getYacht",vo);
	}
	public List<YachtVO> getYachtList(YachtVO vo) {
		System.out.println("getYachtList() 호출됨");
		return mybatis.selectList("YachtDAO.getYachtList", vo);
	}
	public void updateYacht(YachtVO vo) {
		System.out.println("updateYacht() 호출됨");
		mybatis.update("YachtDAO.updateYacht",vo);
	}
	public void deleteYacht(YachtVO vo) {
		System.out.println("deleteYacht() 호출됨");
		mybatis.delete("YachtDAO.deleteYacht",vo);
	}
	
}
