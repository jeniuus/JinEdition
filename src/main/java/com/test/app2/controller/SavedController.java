package com.test.app2.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.test.app2.service.SavedService;
import com.test.app2.service.YachtService;
import com.test.app2.vo.MemVO;
import com.test.app2.vo.SavedVO;
import com.test.app2.vo.YachtVO;

@Controller
public class SavedController {

	@Autowired
	private SavedService savedService;
	@Autowired
	private YachtService yachtService;
	
	//
	// 찜목록 페이지 이동(찜목록 리스트 전체 출력)
	@RequestMapping("/savedList.do")
	public String getSavedList(SavedVO svo, MemVO mvo, Model model) {
		System.out.println("[로그] 컨트롤러: savedList.do 요청");
		System.out.println("svo & mvo"+ svo + "&"+mvo);
		
		// 찜한 목록 정보들 중 yachtPk를 통해 일치하는 요트를 =>  savedPk_yacht에 담자
		List<SavedVO> sdatas = savedService.getSavedList(svo);
		System.out.println("777savedService.getSavedList(svo)" + savedService.getSavedList(svo));
		System.out.println("[★]svo"+svo);
		
		List<YachtVO> savedPk_yacht = new ArrayList<YachtVO>();
		for(SavedVO v:sdatas) {
			YachtVO yvo=new YachtVO(); // YachtVO 객체화
			yvo.setYachtPk(v.getYachtPk());
			yvo = yachtService.getYacht(yvo);
			if(yvo!=null) {
				savedPk_yacht.add(yvo);
			}
		}	
		System.out.println("[★]savedPk_yacht: "+ savedPk_yacht);
		
		model.addAttribute("savedPk_yacht",savedPk_yacht);

		return "savedList.jsp";		
	}
	
	// 찜 중복체크	
	@ResponseBody
	@RequestMapping(value="/checkSaved.do", method = RequestMethod.GET)
	public String checkSaved(SavedVO vo) {
		System.out.println("checkSaved.do 실행");
		System.out.println("[SavedController]: /deleteSaved.do");
		System.out.println("yachtPk, memId 정보 있어야함, 없으면 SavedController => "+vo);
		
		if(savedService.checkSaved(vo)!=null) {//찜 정보 존재한다면, 1반환
			return "1";
		}
		
		return "0";//찜 정보가 없다면, 0 반환
	}
	
	
	
	// 요트 하나 찜 추가(상세페이지에서)
	@RequestMapping("/insertSaved.do")
	public String insertSaved(SavedVO svo, MemVO mvo, YachtVO yvo, Model model) {
		System.out.println("[로그] 컨트롤러: insertSaved.do 요청");
		System.out.println("svo : "+svo);		
		// 로그인x => 찜 실패
		if(mvo.getMemId()==null||mvo.getMemId()=="") {//찜 실패 : Memid 정보 없음 (로그인 안한 상태)
			System.out.println("찜 실패 : memId 정보 없음");
			model.addAttribute("msg","로그인 후 이용할 수 있습니다."); //redirect.jsp에 보낼 msg
			model.addAttribute("url","/main.do"); /// redirect.jsp에 보낼 msg
			return "redirect.jsp"; //alert창으로 보여주기위해 사용되는 [redirect.jsp]페이지
		}		
		// 중복 => 찜 삭제
		if(savedService.checkSaved(svo)!=null) {//찜 실패 : 중복발생
			return "deleteSaved.do";
		}
		// 찜성공 => 찜 추가
		savedService.insertSaved(svo);//지원 성공

		model.addAttribute("msg","찜 완료되었습니다!");
		model.addAttribute("url","/yacht_detail.do?yachtPk=" +yvo.getYachtPk());
		return "redirect.jsp";
	}

    // 요트 하나 찜 취소(삭제)
	@RequestMapping("/deleteSaved.do")
	public String deleteSaved(SavedVO svo, YachtVO yvo, Model model) {
		System.out.println("[로그] 컨트롤러: deleteSaved.do 요청");
		
		model.addAttribute("msg","찜 목록에서 제외되었습니다!");
		model.addAttribute("url","/yacht_detail.do?yachtPk=" +yvo.getYachtPk());

		svo=savedService.checkSaved(svo);

		savedService.deleteSaved(svo);
		return "redirect.jsp";
	}
	
	
	@RequestMapping("/deleteAllSaved.do")
	public String deleteAllSaved(SavedVO svo, YachtVO yvo, Model model, MemVO mvo) {
		System.out.println("[로그] 컨트롤러: deleteAllSaved.do 요청");

		//      System.out.println("=====");
		//      System.out.println(yvo);
		//      System.out.println(svo);
		//      System.out.println("=====");

		model.addAttribute("msg","찜 목록 전체 삭제되었습니다.");
		model.addAttribute("url", "savedList.do?memId=" +mvo.getMemId());

		svo=savedService.checkSaved(svo);//did=  0 -> # 

		savedService.deleteAllSaved(svo);
		return "redirect.jsp";
	}
	
	


}