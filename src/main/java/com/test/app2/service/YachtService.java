package com.test.app2.service;

import java.util.List;

import com.test.app2.vo.YachtVO;

public interface YachtService {
	// 비즈니스 메서드
	// 핵심 관심
	// CRUD
	public void insertYacht(YachtVO vo);
	public YachtVO getYacht(YachtVO vo);
	public List<YachtVO> getYachtList(YachtVO vo);
	public void updateYacht(YachtVO vo);
	public void deleteYacht(YachtVO vo);
}
