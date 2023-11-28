package com.movieport.service;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

public interface MovieService {
	
	/* 영화 목록 */
	public List<MovieVO> movieGetList(Criteria cri) throws Exception;
	
	/* 영화 총 개수 */
	public int movieGetTotal(Criteria cri) throws Exception;
	
	/* 영화 상세 페이지 */
	public MovieVO movieGetDetail(int m_code) throws Exception;
	
}
