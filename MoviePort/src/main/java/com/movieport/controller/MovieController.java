package com.movieport.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;
import com.movieport.model.PageDTO;
import com.movieport.service.MovieService;

@Controller
//@RequestMapping(value = "/movie")
public class MovieController {
	
	private static final Logger log = LoggerFactory.getLogger(MovieController.class);
	
	@Autowired
	private MovieService movieService;
	
	// 메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGet(Criteria cri, Model model,
			@RequestParam(name = "sortOption", required = false, defaultValue = "default") String sortOption) throws Exception {
		
		log.info("메인 페이지 접속..........." + cri);
				
		/* 영화 목록 출력 데이터 */	
	    List<MovieVO> list;
	    
	    if ("totalrate".equals(sortOption)) {
	        // 평점 기준으로 정렬
	        list = movieService.sortMovieTotalrate(cri);
	    } else if("showdate".equals(sortOption)) {
	    	list = movieService.latestMovie(cri);
	    }  else {
	        // 기본적으로는 일반 목록을 가져옴
	        list = movieService.movieGetList(cri);
	    }
		
		/* 정렬된 영화 목록을 모델에 추가 */
		if(!list.isEmpty()) {
			model.addAttribute("list", list);			// 영화 존재 o
		} else {
			model.addAttribute("listCheck", "empty");	// 영화 존재 x
		}
		
		
		/* 페이지 이동 인터페이스 데이터 */
		int total = movieService.movieGetTotal(cri);
		
		PageDTO pageMaker = new PageDTO(cri, total);
		
		model.addAttribute("pageMaker", pageMaker);
	}
}
