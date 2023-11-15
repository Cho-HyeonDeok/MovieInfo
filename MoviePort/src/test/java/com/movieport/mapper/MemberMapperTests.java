package com.movieport.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	@Autowired
	private MemberMapper memberMapper;	// 의존성 주입
	
	// 회원가입 테스트
//	@Test
//	public void memberJoin() throws Exception {
//		MemberVO member = new MemberVO();
//		
//		member.setId("test");
//		member.setPwd("test");
//		member.setName("test");
//		member.setNickname("nickname");
//		member.setPhone("010-1111-2222");
//		member.setEmail("test@naver.com");
//		memberMapper.memberJoin(member);
//	}
	
	// 아이디 중복검사
	@Test
	public void memberIdChk() throws Exception {
		String id = "abc";	// 존재하는 아이디
		String id2 = "test123";	// 존재하지 않는 아이디
		memberMapper.idCheck(id);
		memberMapper.idCheck(id2);
	}
	
	
}
