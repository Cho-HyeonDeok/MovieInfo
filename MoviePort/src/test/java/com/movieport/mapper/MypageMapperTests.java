package com.movieport.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.movieport.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MypageMapperTests {
	
	@Autowired
	MypageMapper mypageMapper;
	
	// 회원정보 불러오기
//	@Test
//	public void memberInfo() throws Exception {
//		String id = "faker";
//
//		mypageMapper.memberInfo(id);
//	}
	
	// 회원탈퇴
	@Test
	public void deleteMember() throws Exception {
		MemberVO member = new MemberVO();
		member.setId("test");
		member.setEmail("test@naver.com");
		
		mypageMapper.deleteMember(member);
	}
}
