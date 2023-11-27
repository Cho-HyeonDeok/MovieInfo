package com.movieport.service;

import com.movieport.model.MemberVO;

public interface MypageService {
	// 회원정보 불러오기
	public MemberVO memberInfo(String id) throws Exception;

	// 회원정보 수정하기
	public int memberUpdate(MemberVO member) throws Exception;

	// 비밀번호 변경하기
	public int pwdUpdate(MemberVO member) throws Exception;

	// 회원탈퇴
	public void deleteMember(MemberVO member) throws Exception;
}
