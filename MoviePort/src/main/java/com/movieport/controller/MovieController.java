package com.movieport.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MovieController {
	private static final Logger log = LoggerFactory.getLogger(MovieController.class);
	
	// 메인 페이지 이동
	@GetMapping("/main")
	public void mainPageGet() {
		log.info("메인 페이지 진입");
	}
	
	//디자인 페이지 이동용 임의의 매핑
	//훗날 삭제 예정
	@GetMapping("/main2")
	public void mainPageGet2() {
		log.info("메인 페이지 진입");
	}
}
