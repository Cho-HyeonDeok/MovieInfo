package com.movieport.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.MovieMapper;
import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

@Service
public class MovieServiceImpl implements MovieService {
	
	private static final Logger log = LoggerFactory.getLogger(MovieServiceImpl.class);

	@Autowired
	MovieMapper movieMapper;

	@Override
	public List<MovieVO> movieGetList(Criteria cri) throws Exception {
		
		return movieMapper.moviesGetList(cri);
	}
	
	
}
