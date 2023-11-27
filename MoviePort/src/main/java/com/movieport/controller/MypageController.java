package com.movieport.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.movieport.model.MemberVO;
import com.movieport.service.MypageService;

@Controller
@RequestMapping(value = "/mypage")
public class MypageController {
	private static final Logger log = LoggerFactory.getLogger(MypageController.class);

	@Autowired
	MypageService mypageService;

	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	
}
