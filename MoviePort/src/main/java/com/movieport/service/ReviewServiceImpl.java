package com.movieport.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.ReviewMapper;
import com.movieport.model.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewMapper reviewMapper;

	// 리뷰 등록
	@Override
	public int insertReview(ReviewVO review) throws Exception {
		int result = reviewMapper.insertReview(review);
		return result;
	}
}
