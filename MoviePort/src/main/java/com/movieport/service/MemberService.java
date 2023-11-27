package com.movieport.service;

import com.movieport.model.MemberVO;

public interface MemberService {
	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;

	// 아이디 중복검사
	public int idCheck(String id) throws Exception;

	// 로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;


	// 아이디 찾기
	public int findIdCheck(MemberVO member) throws Exception;

	// 아이디 찾기 결과
	public MemberVO findId(MemberVO member) throws Exception;

	// 비밀번호 찾기
	public int findPwdCheck(MemberVO member) throws Exception;

	// 임시 비밀번호 이메일로 발송, 기존 비밀번호를 임시 비밀번호로 변경
	public void findPwd(MemberVO member) throws Exception;

}
