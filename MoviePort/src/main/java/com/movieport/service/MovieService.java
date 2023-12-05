package com.movieport.service;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;
import com.movieport.model.ReviewVO;

public interface MovieService {

	/* 영화 목록 */
	public List<MovieVO> movieGetList(Criteria cri) throws Exception;

	/* 영화 총 개수 */
	public int movieGetTotal(Criteria cri) throws Exception;

	/* 영화 상세 페이지 */
	public MovieVO movieGetDetail(int m_code) throws Exception;

	/* 영화 평점 */
	public double movieGetRate(int m_code) throws Exception;

	/* 영화 총 평점 인원 수 */
	public int movieGetRateCount(int m_code) throws Exception;

	/* 영화 평점 반영 */
	public void movieSetRate(int m_code) throws Exception;

	/* 영화 총 평점 인원 수 반영 */
	public void movieSetRateCount(int m_code) throws Exception;

	/* 장르별 영화 목록 */
	public List<MovieVO> moviesGetGenreList(Criteria cri) throws Exception;

	/* 장르별 영화 총 개수 */
	public int movieGetGenreTotal(Criteria cri) throws Exception;

	// 리뷰 리스트 불러오기
	public List<ReviewVO> getReviewList(int m_code) throws Exception;

	// 리뷰 등록
	public void insertReview(ReviewVO review) throws Exception;

	// 리뷰 존재 체크
	public String checkReview(ReviewVO review) throws Exception;

}
