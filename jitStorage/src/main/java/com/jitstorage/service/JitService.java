package com.jitstorage.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.jitstorage.dao.JitInterface;

@Service
public class JitService {

	@Autowired
	SqlSession sqlSession;

	JitInterface inter = null;

	// 로그인
	public ModelAndView login(HttpServletRequest req, HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		inter = sqlSession.getMapper(JitInterface.class);
		String id = req.getParameter("email");
		String pw = req.getParameter("password");
		String page = "";
		System.out.println(id + " / " + pw);
		String userId = inter.login(id, pw);
		System.out.println(userId);
		if (userId != null) {
			page = "redirect:/main";
			httpSession.setAttribute("userInfo", userId);
		} else {
			page = "redirect:/";
		}
		mav.setViewName(page);
		return mav;
	}

	// 회원가입
	public ModelAndView regist(String id, String pw, String pw2, String nick) {
		ModelAndView mav = new ModelAndView();
		inter = sqlSession.getMapper(JitInterface.class);
		String email = inter.chkEmail(id);
		System.out.println(email);
		if (id != "" && pw != "" && !email.equals(id)) {
			int success = inter.regist(id, pw);
			System.out.println(success);
			mav.setViewName("redirect:/");

		} else {
			mav.setViewName("redirect:/join");
		}
		return mav;
	}

}
