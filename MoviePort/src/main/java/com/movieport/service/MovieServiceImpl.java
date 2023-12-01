package com.movieport.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.MovieMapper;
import com.movieport.model.Criteria;
import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
import com.movieport.model.ReviewVO;

@Service
public class MovieServiceImpl implements MovieService {
	
	private static final Logger log = LoggerFactory.getLogger(MovieServiceImpl.class);

	@Autowired
	MovieMapper movieMapper;

	@Override
	public List<MovieVO> movieGetList(Criteria cri) throws Exception {
		
		return movieMapper.moviesGetList(cri);
	}
	
	/* 영화 총 개수 */
	@Override
	public int movieGetTotal(Criteria cri) throws Exception {
		
		log.info("(service) movieGetTotal()........" + cri);
		
		return movieMapper.movieGetTotal(cri);

	}

	/* 영화 상세 페이지 */
	@Override
	public MovieVO movieGetDetail(int m_code) throws Exception {

		log.info("movieGetDetail........" + m_code);
		return movieMapper.movieGetDetail(m_code);
	}

	/* 영화 평점 */
	@Override
	public double movieGetRate(int m_code) throws Exception {
		return movieMapper.movieGetRate(m_code);
	}
	
	/* 영화 총 평점 인원 수 */
	@Override
	public int movieGetRateCount(int m_code) throws Exception {
		return movieMapper.movieGetRateCount(m_code);
	}

	/* 영화 평점 반영 */
	@Override
	public void movieSetRate(int m_code) throws Exception {
		movieMapper.movieSetRate(m_code);
	}
	
	/* 영화 총 평점 인원 수 반영 */
	@Override
	public void movieSetRateCount(int m_code) throws Exception {
		movieMapper.movieSetRateCount(m_code);
	}

	/* 높은 평점순 정렬 */
	@Override
	public List<MovieVO> sortMovieTotalrate(Criteria cri) throws Exception {	
		return movieMapper.sortMovieTotalrate(cri);
	};
	
	/* 최신순으로 영화 정렬 */
	@Override
	public List<MovieVO> latestMovie(Criteria cri) throws Exception {	
		return movieMapper.latestMovie(cri);
	}

	// 리뷰 리스트 불러오기
	@Override
	public List<ReviewVO> getReviewList(int m_code) throws Exception {
		return movieMapper.getReviewList(m_code);
	}

	// 리뷰 등록
	@Override
	public void insertReview(ReviewVO review) throws Exception {
		movieMapper.insertReview(review);
	}

	// 리뷰 존재 체크
	@Override
	public int checkReview(ReviewVO review) throws Exception {
		int result = 0;

		try {
			result = movieMapper.checkReview(review);
			System.out.println("result : " + result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


}
