package com.movieport.mapper;

import com.movieport.model.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void memberJoin(MemberVO member);

	// 아이디 중복 검사
	public int idCheck(String id);

	// 로그인
	public MemberVO memberLogin(MemberVO member);

	// 아이디 찾기
	public int findIdCheck(MemberVO member);

	public MemberVO findId(MemberVO member);

	// 비밀번호 찾기
	public int findPwdCheck(MemberVO member);

	public void findPwd(MemberVO member);
	
	

}
