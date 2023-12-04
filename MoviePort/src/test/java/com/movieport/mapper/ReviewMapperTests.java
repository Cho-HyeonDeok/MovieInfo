package com.movieport.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.movieport.model.ReviewVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReviewMapperTests {
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	@Test
	public void insertReview() {
		String id = "faker";
		String m_code = "13";
		double rate = 9.5;
		String comments = "리뷰 테스트 : 모든 길은 저를 통합니다. -대상혁-";
		
		ReviewVO review = new ReviewVO();
		review.setId(id);
		review.setM_code(m_code);
		review.setRate(rate);
		review.setComments(comments);
		
		reviewMapper.insertReview(review);
	}

}
