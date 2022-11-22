package com.study.springa.sh;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.study.springa.entity.Member;
import com.study.springa.service.BoardService;

@Controller
public class LoginController {
	@Autowired
	BoardService service;
	
	@RequestMapping("/login.do")
	public String loginCheck(Member vo, HttpSession session) {
		Member mvo = service.loginCheck(vo);
		if(mvo!=null) {
			session.setAttribute("mvo", mvo);
		}
		return "redirect:/boardList.do";
	
	}
	
	@RequestMapping("/logout.do")
	public String loginOut(HttpSession session) {
		session.invalidate(); //무효화
		return "redirect:/boardList.do";
	}
	
	// 회원가입 폼
	@GetMapping("/join.do")
	public String joinForm() {
		
		return "join";
	}
	
	// 로그인 폼
	@GetMapping("/login.do")
	public String loginForm() {
		
		return "login";
	}
	
	// 회원가입
	@PostMapping("/join.do")
	public String join(HttpSession session,Member vo) {
		service.joininsert(vo);
		session.setAttribute("vo", vo);
		Member mvo = service.loginCheck(vo);
		if(mvo!=null) {
			session.setAttribute("mvo", mvo);
		}
		
		return "redirect:/boardList.do";
	}
//	// 닉네임 중복 체크
//	@ResponseBody
//	@RequestMapping(value="/idCheck", method = RequestMethod.POST)
//	public int nameChk(Member vo) {
//	  int result = service.idcheck(vo);
//	  return result;//
	}
	  

