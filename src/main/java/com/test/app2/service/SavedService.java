package com.test.app2.service;

import java.util.List;

import com.test.app2.vo.SavedVO;

public interface SavedService {

	public SavedVO checkSaved(SavedVO vo);	
	public void insertSaved(SavedVO vo);
	public List<SavedVO> getSavedList(SavedVO vo);
	public void deleteSaved(SavedVO vo);
	public void deleteAllSaved(SavedVO vo);
	
	
}
