package com.movieport.service;

import com.movieport.model.MemberVO;

public interface MypageService {
	// 회원정보 불러오기
	public MemberVO memberInfo(String id) throws Exception;

	// 회원정보 수정하기
	public int memberUpdate(MemberVO member) throws Exception;

	// 회원탈퇴
	public void deleteMember(MemberVO member) throws Exception;
}
