package com.movieport.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public void mainPageGet(Criteria cri, Model model) throws Exception {
		
		log.info("메인 페이지 접속..........." + cri);
		
		/* 영화 목록 출력 데이터 */
		
		List<MovieVO> list = movieService.movieGetList(cri);
		
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
	
	/* 영화 상세 페이지 */
	@GetMapping("/movie/movieDetail")
	public void movieDetailGET(int m_code, Criteria cri, Model model) throws Exception{
		
		log.info("movieDetail........." + m_code);
		
		/* 영화 목록 페이지 정보 */
		model.addAttribute("cri", cri);
		
		/* 선택 영화 정보 */
		model.addAttribute("movieInfo", movieService.movieGetDetail(m_code));
		
	}
	
	// 리뷰 등록하기
	@GetMapping("/reviewInsert/{id}")
	public String reviewInsertWindowGET(@PathVariable("id")String id, String m_code, Model model) throws Exception {
		MovieVO movie = movieService.movieGetCodeTitle(m_code);
		model.addAttribute("movieInfo", movie);
		model.addAttribute("memberId", id);
		
		return "/reviewInsert";
	}
	

}
