package com.movieport.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;
import com.movieport.model.ReviewVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MovieMapperTests {
	
	@Autowired
	private MovieMapper mapper;
	
//	/* 영화 총 수 */
//	@Test
//	public void movieGetTotalTest() throws Exception{
//		
//		Criteria cri = new Criteria();
//		cri.setKeyword("원소");
//		
//		int total = mapper.movieGetTotal(cri);
//		
//		System.out.println("total............." + total);
//		
//	}
	
	/* 영화 상세 페이지 */
//	@Test
//	public void movieGetDetailTest() {
//		
//		int m_code = 17;
//		
//		MovieVO movie = mapper.movieGetDetail(m_code);
//		
//		System.out.println("movie.............." + movie);
//	}
	
	// 리뷰 등록하기
//	@Test
//	public void insertReview() {
//		String id = "faker";
//		String m_code = "13";
//		String title = "포레스트 컴프";
//		double rate = 4.5;
//		String comments = "리뷰 테스트 : 모든 길은 저를 통합니다. -대상혁-";
//		
//		ReviewVO review = new ReviewVO();
//		review.setId(id);
//		review.setM_code(m_code);
//		review.setTitle(title);
//		review.setRate(rate);
//		review.setComments(comments);
//		
//		mapper.insertReview(review);
//	}

	
	// 영화코드에 따른 리뷰리스트 불러오기
//	@Test
//	public void getReviewList() {
//		int m_code = 13;
//		
//		List<ReviewVO> review = mapper.getReviewList(m_code);
//		
//		System.out.println("review....." + review);
//	}
	
	// 리뷰 존재 여부 체크
	@Test
	public void checkReview() {
		ReviewVO review = new ReviewVO();
		
		review.setId("bbbb");
		review.setM_code("13");
		
		mapper.checkReview(review);
	}
}
