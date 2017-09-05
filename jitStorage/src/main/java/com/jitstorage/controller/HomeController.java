package com.jitstorage.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import com.jitstorage.service.JitService;

@Controller("HomeController")
public class HomeController {

	@Autowired
	JitService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 홈페이지
	@RequestMapping(value = "/")
	public String home(Locale locale) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);

		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		String ip = req.getHeader("X-FORWARDED-FOR");
		if (ip == null)
			ip = req.getRemoteAddr();

		logger.info("{} is Comming {}", ip, formattedDate);

		return "index";
	}

	@RequestMapping(value = "index2")
	public String index() {
		logger.info("Access index2");
		return "index2";
	}

	// 로그인
	@RequestMapping(value = "login")
	public ModelAndView login(HttpServletRequest req, HttpSession httpSession) {
		logger.info("Access login");
		return service.login(req, httpSession);
	}

	// 회원가입
	@RequestMapping(value = "join")
	public String join() {
		logger.info("Access join");
		return "join";
	}

	// table
	@RequestMapping(value = "table")
	public String table() {
		logger.info("access table");
		return "table";
	}

	// 로그인 완료
	@RequestMapping(value = "main")
	public String mainHomepage() {
		return "main";
	}

	// 회원가입 추가
	@RequestMapping(value = "regist")
	public ModelAndView regist(HttpServletRequest req) {
		String id = req.getParameter("email");
		String pw = req.getParameter("password");
		String pw2 = req.getParameter("passwordChk");
		String nickname = req.getParameter("nickname");
		logger.info(id + " / " + pw + " / " + pw2 + " / " + nickname);
		return service.regist(id, pw, pw2, nickname);
	}

}
