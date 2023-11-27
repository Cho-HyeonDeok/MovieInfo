package com.movieport.service;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

public interface MovieService {
	
	/* 영화 목록 */
	public List<MovieVO> movieGetList(Criteria cri) throws Exception;
	
	
	
}
