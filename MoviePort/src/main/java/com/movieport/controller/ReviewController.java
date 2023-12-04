package com.movieport.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.movieport.model.ReviewVO;
import com.movieport.service.ReviewService;

@RestController		// 뷰를 따로 만들지 않고 바로 http body 데이터를 담아 반환하기 위함
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 등록
	@PostMapping("/insert")
	public void insertReviewPOST(ReviewVO review) throws Exception {
		reviewService.insertReview(review);
	}

}
