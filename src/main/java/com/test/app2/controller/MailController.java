package com.test.app2.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {

	@Bean
	public JavaMailSenderImpl mailSender() {
		JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl(); 
		javaMailSender.setProtocol("smtp"); 
		javaMailSender.setHost("127.0.0.1"); 
		javaMailSender.setPort(25); return javaMailSender; 
	}

	@Autowired
	private JavaMailSender mailSender;
	
	// (1) mailSending 코드(렌트 요청)
	@RequestMapping("/mailSending.do")
	public String mailSending(HttpServletRequest request, Model model) {
		System.out.println("[컨트롤러]mailSending.do 요청(렌트)");
							//뷰에서 해당 input의 name
		String from = request.getParameter("from"); // (1)보내는 사람 이메일
		String to = request.getParameter("to"); // (2)받는 사람 이메일
		String title = request.getParameter("title"); // (3)메일 제목
		String content = request.getParameter("content"); // (4)메일 내용
		String name = request.getParameter("name");
		String peopleNum = request.getParameter("peopleNum");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		String phoneNum = request.getParameter("phoneNum");
		String memId = request.getParameter("memId");
		System.out.println("보내는 이메일: "+from+ 
					"\n받는 이메일: "+to+
					"\n회원ID: "+memId+
					"\n이름: "+name+
					"\n인원수: "+peopleNum+
					"\n인수일: "+startDate+
					"\n반납일: "+endDate+
					"\n연락처: "+phoneNum+
					"\n제목: "+title+
					"\n메세지: "+content);
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(from); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(to); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText("이름: "+memId+
					"\n"+
					"\n이름: "+name+
					"\n"+
					"\n연락처: "+phoneNum+
					"\n"+
					"\n인원수: "+peopleNum+
					"\n"+
					"\n인수일: "+startDate+
					"\n반납일: "+endDate+
					"\n"+
					"\n메세지: "+content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		model.addAttribute("msg","렌트 요청 메일이 정상적으로 발송되었습니다.");
		model.addAttribute("url","/main.do");
		return "redirect.jsp";
	}
	
	//------------------------------------------------------------------------
	
	// (2) 문의하기 코드
	@RequestMapping("/inquiry.do")
	public String inquiry(HttpServletRequest request, Model model) {
		System.out.println("[컨트롤러]inquiry.do 요청(문의)");
							//뷰에서 해당 input의 name
		String inqEmail = request.getParameter("inqEmail"); // (1)보내는 사람 이메일
		String toEmail = request.getParameter("toEmail"); // (2)받는 사람 이메일
		String inqTitle = request.getParameter("inqTitle"); // (3)메일 제목
		String inqMsg = request.getParameter("inqMsg"); // (4)메일 내용		
		String inqPhone = request.getParameter("inqPhone");
		String inqName = request.getParameter("inqName");
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(inqEmail); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(toEmail); // 받는사람 이메일
			messageHelper.setSubject(inqTitle); // 메일제목은 생략이 가능하다
			messageHelper.setText("이름: "+inqName+
					"\n연락처: "+inqPhone+
					"\n"+
					"\n메세지: "+inqMsg); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		model.addAttribute("msg","문의 메일이 정상적으로 발송되었습니다.");
		model.addAttribute("url","/main.do");
		return "redirect.jsp";
	}
}