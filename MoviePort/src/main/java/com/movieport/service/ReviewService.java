package com.movieport.service;

import com.movieport.model.ReviewVO;

public interface ReviewService {
	// 리뷰 등록
	public void insertReview(ReviewVO review) throws Exception;
}
