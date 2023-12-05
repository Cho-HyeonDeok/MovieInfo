package com.movieport.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;
import com.movieport.model.PageDTO;
import com.movieport.model.ReviewVO;
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

		// System.out.println(list.size());

		if (!list.isEmpty()) {
			model.addAttribute("list", list); // 영화 존재 o
		} else {
			model.addAttribute("listCheck", "empty"); // 영화 존재 x
		}

		/* 페이지 이동 인터페이스 데이터 */
		int total = movieService.movieGetTotal(cri);

		System.out.println("total : " + total);

		PageDTO pageMaker = new PageDTO(cri, total);

		model.addAttribute("pageMaker", pageMaker);
	}

	/* 영화 상세 페이지 */
	@GetMapping("/movie/movieDetail")
	public void movieDetailGET(int m_code, Criteria cri, Model model) throws Exception {

		log.info("movieDetail........." + m_code);

		/* 영화 목록 페이지 정보 */
		model.addAttribute("cri", cri);

		/* 선택 영화 정보 */
		model.addAttribute("movieInfo", movieService.movieGetDetail(m_code));

		// 리뷰 리스트 불러오기
		model.addAttribute("reviewList", movieService.getReviewList(m_code));
		log.info("리뷰 리스트 : " + movieService.getReviewList(m_code));
	}

	/* 영화 평점 반영 */
	@PostMapping("/movie/movieDetail")
	public void movieSetRatePOST(int m_code, Criteria cri, Model model) throws Exception {

		log.info("movieSetRatePOST...............");

	}

	// 리뷰 체크(존재 : 1, 존재X : 0) 및 리뷰 등록
	@PostMapping("/movie/insertReview")
	public String insertReviewPOST(ReviewVO review, RedirectAttributes rttr) throws Exception {
		log.info("리뷰 체크 동작");

		if (movieService.checkReview(review) != "0") {
			log.info("리뷰 체크 결과 : " + movieService.checkReview(review));
			log.info("이미 존재");

			rttr.addFlashAttribute("msg", "회원님이 작성한 리뷰가 이미 존재합니다.");
			return "redirect:/movie/movieDetail?m_code=" + review.getM_code();
		} else {
			log.info("리뷰 체크 결과 : " + movieService.checkReview(review));
			log.info("리뷰 등록 동작");

			movieService.insertReview(review);
			log.info("리뷰 등록 성공");

			rttr.addFlashAttribute("msg", "리뷰가 등록되었습니다.");
			return "redirect:/movie/movieDetail?m_code=" + review.getM_code();
		}
	}

	/* 영화 장르 별 페이지 */
	@RequestMapping(value = "/movie/movieCategory", method = RequestMethod.GET)
	public void movieGenreListGET(String genre, Criteria cri, Model model) throws Exception {

		log.info("moviesGenreListGET...................");
		cri.setGenre(genre);

		/* 영화 장르별 목록 출력 데이터 */
		List<MovieVO> list = movieService.moviesGetGenreList(cri);

		// System.out.println("model : " + model);
		// System.out.println("genre : " + genre);
		System.out.println("list : " + list.size() + list);
		// System.out.println("result_list " + result_list.size() + result_list);

		if (!list.isEmpty()) {
			model.addAttribute("list", list); // 영화 존재 o
		} else {
			model.addAttribute("listCheck", "empty"); // 영화 존재 x
		}

		/* 페이지 이동 인터페이스 데이터 */
		int total = movieService.movieGetGenreTotal(cri);

		PageDTO pageMaker = new PageDTO(cri, total);

		model.addAttribute("pageMaker", pageMaker);
	}

}
