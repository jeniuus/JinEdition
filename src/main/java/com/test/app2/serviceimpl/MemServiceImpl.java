package com.test.app2.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app2.dao.MemDAO3;
import com.test.app2.service.MemService;
import com.test.app2.vo.MemVO;

@Service("memService")
public class MemServiceImpl implements MemService{
	
	@Autowired
	private MemDAO3 memDAO;
	
	@Override
	public void insertMem(MemVO vo) {
		memDAO.insertMem(vo);
	}

	@Override
	public MemVO getMem(MemVO vo) {
		return memDAO.getMem(vo);
	}

	@Override
	public void updateMem(MemVO vo) {
		memDAO.updateMem(vo);	
		
	}

	@Override
	public void deleteMem(MemVO vo) {
		memDAO.deleteMem(vo);
		
	}

}
