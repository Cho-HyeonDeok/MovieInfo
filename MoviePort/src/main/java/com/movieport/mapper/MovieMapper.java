package com.movieport.mapper;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

public interface MovieMapper {
	
	/* 영화 목록 */	
	public List<MovieVO> moviesGetList(Criteria cri);

	/* 작가 총 수 */
	public int movieGetTotal(Criteria cri);
	
	/* 영화 상세 */
	public MovieVO movieGetDetail(String m_code);
	
	// 영화코드, 영화제목 불러오기
	public MovieVO movieGetCodeTitle(String m_code);
	
}
