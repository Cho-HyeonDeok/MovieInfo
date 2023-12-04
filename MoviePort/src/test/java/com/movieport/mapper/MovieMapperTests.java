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
	private MovieMapper mapper;
	
//	/* 영화 총 수 */
//	@Test
//	public void movieGetTotalTest() throws Exception{
//		
//		Criteria cri = new Criteria();
//		cri.setKeyword("원소");
//		
//		int total = mapper.movieGetTotal(cri);
//		
//		System.out.println("total............." + total);
//		
//	}
	
	/* 영화 상세 페이지 */
//	@Test
//	public void movieGetDetailTest() {
//		
//		int m_code = 17;
//		
//		MovieVO movie = mapper.movieGetDetail(m_code);
//		
//		System.out.println("movie.............." + movie);
//	}
	
	/* 영화 목록 테스트 */
//    @Test
//    public void movieGetListTest() throws Exception{
//        
//        Criteria cri = new Criteria(3,10);    // 3페이지 & 10개 행 표시
//        
//        List<MovieVO> list = mapper.moviesGetList(cri);
//        
//        for(int i = 0; i < list.size(); i++) {
//            System.out.println("list" + i + ".........." + list.get(i));
//        }
//        
//    }
 

	
	/* 장르별 영화 목록 */
//	@Test
//	public void moviesGetGenreListTest() throws Exception{
//		
//		Criteria cri = new Criteria(3,10);
//		
//		String genre = "액션";
//		cri.setGenre(genre);
//		
//		List<MovieVO> list = mapper.moviesGetGenreList(cri);
//		
//		for(int i = 0 ; i < list.size(); i++) {
//			System.out.println("list......" + i + list.get(i));
//		}
//	}
	
	/* 영화 총 수 */
	@Test
	public void movieGetGenreTotalTest() throws Exception{
		
		Criteria cri = new Criteria();
		String genre = "액션";
		cri.setGenre(genre);
		
		int total = mapper.movieGetGenreTotal(cri);
		
		System.out.println("total............." + total);
		
	}
}
