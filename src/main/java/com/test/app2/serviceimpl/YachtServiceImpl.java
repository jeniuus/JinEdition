package com.test.app2.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.app2.dao.YachtDAO3;
import com.test.app2.service.YachtService;
import com.test.app2.vo.YachtVO;

@Service("yachtService")
public class YachtServiceImpl implements YachtService{
	
	@Autowired // DI
	private YachtDAO3 yachtDAO; // YachtDAO3
	
	@Override
	public void insertYacht(YachtVO vo) {
		yachtDAO.insertYacht(vo);
	}

	@Override
	public YachtVO getYacht(YachtVO vo) {	
		return yachtDAO.getYacht(vo);
	}

	@Override
	public List<YachtVO> getYachtList(YachtVO vo) {
		return yachtDAO.getYachtList(vo);
	}

	@Override
	public void updateYacht(YachtVO vo) {
		yachtDAO.updateYacht(vo);
	}	

	@Override
	public void deleteYacht(YachtVO vo) {
		yachtDAO.deleteYacht(vo);
	}



}
