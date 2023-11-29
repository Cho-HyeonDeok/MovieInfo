package com.movieport.service;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

public interface MovieService {
	
	/* 영화 목록 */
	public List<MovieVO> movieGetList(Criteria cri) throws Exception;
	
	/* 작가 총 수 */
	public int movieGetTotal(Criteria cri) throws Exception;
	
	/* 높은 평점순 정렬 */
	public List<MovieVO> sortMovieTotalrate(Criteria cri) throws Exception;

	/* 최신순으로 영화 정렬 */
	public List<MovieVO> latestMovie(Criteria cri) throws Exception;
}
