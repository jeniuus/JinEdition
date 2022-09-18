package com.test.app2.controller;

import java.io.File;
import java.io.IOException;

import java.util.HashMap;

import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;


import com.test.app2.service.YachtService;

import com.test.app2.vo.YachtVO;


@Controller
@SessionAttributes("data") //data라는 이름의 정보가 Model에 들어온다면, session에 기억해둬라! ☆
public class YachtController {
	
	@Autowired
	private YachtService yachtService;

	
	

	
	
	// view에서 사용할 데이터를 설정할 용도로 @ModelAttribute 사용가능
	// 검색기능
	@ModelAttribute("conMap") //@RequestMapping이 설정된 메서드보다 먼저 수행됨
	public Map<String,String> searchConditionMAp(){
		Map<String,String> conMap = new HashMap<String,String>();
		conMap.put("지역","location"); // view에서 사용할 데이터들
		conMap.put("제작연도","year");	
		conMap.put("타입","boatType");	
		return conMap;	// 반환값은 자동으로 Model에 저장 (다음 View에서 볼 수 있음)
	}
	
	// 요트 전체 리스트 출력 + 검색기능으로 원하는 조건의 결과만 출력
	@RequestMapping(value="/main.do")
	public String getYachtList(YachtVO vo,Model model) { 
		System.out.println("[로그] 컨트롤러: main.do 요청");
		// 검색 로직 추가할 예정				// ▲ Command 객체
		// [day71]Null 체크를 로직의 가장 처음에 수행해보려고 한다!
		// "메인보여줘" 요청일때는 search 관련 요소들이 null임..!
		// "검색해줘" 요청일때, search관련 요소들이 존재함!
		if(vo.getSearchCondition()==null) {
			// "메인보여줘"
			vo.setSearchCondition("location"); //검색조건 설정x -> 디폴트 검색조건: location
		}
		if(vo.getSearchKeyword()==null) {
			// 검색어를 작성하지않은 경우
			vo.setSearchKeyword(""); //공백
		}
				
		//List<BoardVO> datas = boardService.getBoardList(vo);
		model.addAttribute("datas", yachtService.getYachtList(vo)); // Model을 이용하여 전달할 정보를 저장!
		return "main.jsp"; // forward 전달방식임
	}
	
	// 요트 상세페이지
	@RequestMapping(value="/yacht_detail.do")
	public String getYacht(YachtVO vo,Model model) {
		vo=yachtService.getYacht(vo);
		model.addAttribute("data", vo); // ☆
		return "yacht_detail.jsp";
	}
	
	// [day72- 파일업로드 추가★★★]
	@RequestMapping(value="/insertYacht.do") //아래 메서드를 /insertBoard.do할 때 사용
	public String insertYacht(YachtVO vo) throws IllegalStateException, IOException { 
				              // ▲ Command 객체	
		// [파일업로드 로직]
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) { //정보가 차있니?
			String name = uploadFile.getOriginalFilename();
			System.out.println("파일명: " + name);
			uploadFile.transferTo(new File("C:\\KIM2\\workspace\\Z_MyProject_v1\\src\\main\\webapp\\images\\yacht\\"+name));
			vo.setYachtPic(name);																	// 주의▲
			//File -> io 임포트
		}
		else {
			vo.setYachtPic("defalut.jpg");
		}
		yachtService.insertYacht(vo);
		return "redirect:main.do"; 
	}
	
	// 요트삭제 - 관리자 권환
//	@RequestMapping(value="/deleteYacht.do")
//	public String deleteYacht(YachtVO vo) {
//		yachtService.deleteYacht(vo);
//		return "redirect:main.do";
//	}
	@RequestMapping(value="/deleteYacht.do")
	public String deleteYacht(YachtVO vo, Model model) {
		yachtService.deleteYacht(vo);
		model.addAttribute("msg","해당 요트 삭제가 완료되었습니다.");
		model.addAttribute("url","/main.do");
		return "redirect.jsp";
	}
	
	// 요트 수정 - 관리자 권환
	@RequestMapping(value="/updateYacht.do")
	public String updateYacht(@ModelAttribute("data")YachtVO vo) {  // ☆
		System.out.println(" null 업데이트 이슈 확인: "+vo.getYear()); // session에 저장해둔 정보가 먼저 setter
		System.out.println(" null 업데이트 이슈 확인: "+vo.getLocation()); // 이후에 파라미터로 들어온 정보가 나중에 setter
		yachtService.updateYacht(vo);
		return "redirect:main.do";
	}
	

	
}
