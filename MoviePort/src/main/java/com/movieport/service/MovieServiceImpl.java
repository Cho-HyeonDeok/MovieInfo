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

	// 영화코드, 영화제목 불러오기
	@Override
	public MovieVO movieGetCodeTitle(String m_code) throws Exception {
		// TODO Auto-generated method stub
		return null;
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
	};
}
