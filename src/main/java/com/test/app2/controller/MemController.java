package com.test.app2.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.test.app2.service.MemService;
import com.test.app2.vo.MemVO;

@Controller
public class MemController {
	
	@Autowired
	private MemService memService;

//	@RequestMapping(value="/login.do",method=RequestMethod.GET)
//	public String login(@ModelAttribute("user")MemVO vo) {
//		System.out.println(" GET으로 login.do요청");
//		vo.setMemId("soo1256");
//		vo.setMemPw("1234");
//		return "login_resist_form.jsp";
//	}
	
	// [1] 로그인	
	@RequestMapping("/login.do")
	public String login(MemVO vo,HttpSession session, Model model) {
		System.out.println(" POST로 login.do요청");
		if(vo.getMemId()==null||vo.getMemId().equals("")) { 
			// 예외처리
			throw new IllegalArgumentException("아이디 입력없이 login.do를 요청하였습니다.");
		}				
		vo=memService.getMem(vo);		
		if(vo==null){
			model.addAttribute("msg","아이디 또는 비밀번호가 올바르지 않습니다.");
			model.addAttribute("url","/main.do");
			return "redirect.jsp";
		}		
		System.out.println("[로그인성공]"+vo);
		session.setAttribute("mem", vo); // ◆ vo를 mem이란 이름으로 세션에 저장!
		return "redirect:main.do";
	}
	
	//
	
	// [2] 로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.do";
	}
	
	// [3] 회원가입
	@RequestMapping("/insertMem.do")
	public String insertMember(MemVO vo, Model model) {
		memService.insertMem(vo);
		model.addAttribute("msg","회원가입이 완료되었습니다.");
		model.addAttribute("url","/main.do");
		return "redirect.jsp";
	}	
	// [4] 회정보수정
	@RequestMapping("/updateMem.do")	//정보 수정 시 (로그아웃-로그인 없이)바로 변경된 정보 뜨게 하기 위해 세션 사용
	public String updateMem(MemVO vo, HttpSession session) {
		memService.updateMem(vo);
		session.setAttribute("mem", vo); // ◆ vo를 mem이란 이름으로 세션에 저장!
		return "redirect:main.do";
	}	
	
	// [5] 회원탈퇴
	@RequestMapping("/deleteMem.do")
	public String deleteMem(MemVO vo,HttpSession session,Model model) {
		memService.deleteMem(vo);
		session.invalidate();
		model.addAttribute("msg","회원탈퇴 완료!");
		model.addAttribute("url","/main.do");
		return "redirect.jsp";
	}	
		
}
