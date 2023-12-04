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
	public void insertReview(ReviewVO review) throws Exception {
		reviewMapper.insertReview(review);
	}
}
