package com.movieport.service;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

public interface MovieService {

	/* 영화 목록 */
	public List<MovieVO> movieGetList(Criteria cri) throws Exception;

	/* 작가 총 수 */
	public int movieGetTotal(Criteria cri) throws Exception;

	// 영화코드, 영화제목 불러오기
	public MovieVO movieGetCodeTitle(String m_code) throws Exception;

}
