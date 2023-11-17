package com.movieport.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//임의로 만든 테스팅용 컨트롤러 입니다.
//testing 폴더 내부에 있는 사이트들 오가는 용도로 임의로 만든 거니 혹시라도 손대실 거면
//미리 말씀해주세요!!!

@Controller
@RequestMapping("/testing/*")
public class BoardController {
	
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@GetMapping("/main")
	public void goMain(){
		log.info("게시판 진입");
		
	}
	
	
	@GetMapping("/bidulgi")
	public void gobidulgi(){
		log.info("게시판 진입");
		
	}
	
	@GetMapping("/index")
	public void goIndex(){
		log.info("게시판 진입");
		
	}
	

	@GetMapping("/portfolio-single-1")
	public void goPort1(){
		log.info("게시판 진입");
		
	}
	
	@GetMapping("/portfolio-single-2")
	public void goPort2(){
		log.info("게시판 진입");
		
	}
	
	@GetMapping("/portfolio-single-3")
	public void goPort3(){
		log.info("게시판 진입");
		
	}
	
	@GetMapping("/join2")
	public void goJoin2(){
		log.info("게시판 진입");
		
	}
	

	
	
}
