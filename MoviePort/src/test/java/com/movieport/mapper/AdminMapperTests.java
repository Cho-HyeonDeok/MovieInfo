package com.movieport.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests {

	@Autowired
	AdminMapper adminMapper;

	// 회원리스트 가져오기
//	@Test
//	public void memberList() {
//
//		adminMapper.memberList();
//	}

	// 회원상세정보 가져오기
	@Test
	public void memberDetail() throws Exception {
		String id = "bbbb";
		
		adminMapper.memberDetail(id);
	}
}
