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
}
