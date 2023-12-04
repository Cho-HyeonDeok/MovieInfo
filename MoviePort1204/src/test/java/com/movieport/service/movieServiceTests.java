package com.movieport.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.movieport.model.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class movieServiceTests {

	private static final Logger log = LoggerFactory.getLogger(MovieServiceImpl.class);

	@Autowired
	private MovieService service;

//	/* 영화 상세 페이지 */
//	@Test
//	public void movieGetDetailTest() throws Exception {
//
//		int m_code = 17;
//
//		log.info("movie......" + service.movieGetDetail(m_code));
//	}

	/* 장르별 영화 리스트 */
	@Test
	public void moviesGetGenreListTest() throws Exception {

		Criteria cri = new Criteria();

		String genre = "액션";
		cri.setGenre(genre);
		
		log.info("movie......." + service.moviesGetGenreList(cri));

	}

	/* 장르별 영화 수 */
	@Test
	public void movieGetGenreTotalTest() throws Exception {

		Criteria cri = new Criteria();

		String genre = "액션";
		cri.setGenre(genre);

		log.info("movie......." + service.movieGetGenreTotal(cri));
		
	}

}
