package com.test.app2.service;

import com.test.app2.vo.MemVO;

public interface MemService {

	public void insertMem(MemVO vo);
	public MemVO getMem(MemVO vo);
	public void updateMem(MemVO vo);
	public void deleteMem(MemVO vo);
	
}
