package com.movieport.service;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

public interface MovieService {

	/* 영화 목록 */
	public List<MovieVO> movieGetList(Criteria cri) throws Exception;

	// 영화코드, 영화제목 불러오기
	public MovieVO movieGetCodeTitle(String m_code) throws Exception;
  
	/* 영화 총 개수 */
	public int movieGetTotal(Criteria cri) throws Exception;
	

	/* 높은 평점순 정렬 */
	public List<MovieVO> sortMovieTotalrate(Criteria cri) throws Exception;

	/* 최신순으로 영화 정렬 */
	public List<MovieVO> latestMovie(Criteria cri) throws Exception;

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
	

}
