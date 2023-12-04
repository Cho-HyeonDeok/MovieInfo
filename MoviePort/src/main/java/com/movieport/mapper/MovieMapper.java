package com.movieport.mapper;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
import com.movieport.model.ReviewVO;

public interface MovieMapper {

	/* 영화 목록 */
	public List<MovieVO> moviesGetList(Criteria cri);

	/* 영화 총 수 */
	public int movieGetTotal(Criteria cri);

	/* 영화 상세 */
	public MovieVO movieGetDetail(int m_code);

	// 리뷰 리스트 불러오기
	public List<ReviewVO> getReviewList(int m_code);

	// 리뷰 등록
	public void insertReview(ReviewVO review);

	// 리뷰 존재 체크
	public Integer checkReview(ReviewVO review);
	
	/* 영화 평점 */
	public double movieGetRate(int m_code);

	/* 영화 총 평점 인원 수 */
	public int movieGetRateCount(int m_code);

	/* 영화 평점 반영 */
	public void movieSetRate(int m_code);

	/* 영화 총 평점 인원 수 반영 */
	public void movieSetRateCount(int m_code);
	
	/* 장르별 영화 목록 */
	public List<MovieVO> moviesGetGenreList(Criteria cri);
	
	/* 장르별 영화 수 */
	public int movieGetGenreTotal(Criteria cri);

	/* 평점순으로 영화 정렬 */
	public List<MovieVO> sortMovieTotalrate(Criteria cri);

	/* 최신순으로 영화 정렬 */
	public List<MovieVO> latestMovie(Criteria cri);
	
	public MovieVO movieGetCodeTitle(String m_code);
	

}
