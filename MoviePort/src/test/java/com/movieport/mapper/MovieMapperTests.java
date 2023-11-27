package com.movieport.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.movieport.model.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MovieMapperTests {
	
	@Autowired
	private MovieMapper mapper;
	
	/* 영화 총 수 */
	@Test
	public void movieGetTotalTest() throws Exception{
		
		Criteria cri = new Criteria();
		cri.setKeyword("원소");
		
		int total = mapper.movieGetTotal(cri);
		
		System.out.println("total............." + total);
		
	}

}
