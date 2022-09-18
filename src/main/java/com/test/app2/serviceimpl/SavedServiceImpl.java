package com.test.app2.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app2.dao.SavedDAO2;
import com.test.app2.service.SavedService;
import com.test.app2.vo.SavedVO;

@Service("savedService")
public class SavedServiceImpl implements SavedService {
	
	@Autowired //DI
	private SavedDAO2 savedDAO;

	@Override
	public SavedVO checkSaved(SavedVO vo) {
		return savedDAO.checkSaved(vo);
	}

	@Override
	public void insertSaved(SavedVO vo) {
		savedDAO.insertSaved(vo);
	}

	@Override
	public List<SavedVO> getSavedList(SavedVO vo) {
		return savedDAO.getSavedList(vo);
	}

	@Override
	public void deleteSaved(SavedVO vo) {
		savedDAO.deleteSaved(vo);
	}

	@Override
	public void deleteAllSaved(SavedVO vo) {
		// TODO Auto-generated method stub
		
	}




}
