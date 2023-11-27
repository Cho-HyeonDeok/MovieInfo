package com.movieport.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.movieport.model.Criteria;
import com.movieport.model.MovieVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MovieMapperTests {

	@Autowired
	MovieMapper mapper;

	/* 영화 목록 테스트 */

	@Test
	public void movieGetListTest() throws Exception {

		Criteria cri = new Criteria(1, 10);

		List<MovieVO> list = mapper.moviesGetList(cri);

		for (int i = 0; i < list.size(); i++) {
			System.out.println("list" + i + "......." + list.get(i));
		}
	}

	/* 영화 리스트 */

//	@Test
//	public void movieListTest() {
//
//		mapper.movielist();
//	}
}
