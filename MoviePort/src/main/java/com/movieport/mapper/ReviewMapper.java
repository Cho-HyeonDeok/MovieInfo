package com.movieport.mapper;

import com.movieport.model.ReviewVO;

public interface ReviewMapper {
	// 리뷰 등록
	public int insertReview(ReviewVO review);
}
