package com.movieport.mapper;

import com.movieport.model.MemberVO;

public interface MypageMapper {
	// 회원정보 불러오기
	public MemberVO memberInfo(String id);
	
	// 회원정보 수정하기
	public int memberUpdate(MemberVO member);
	
	// 회원탈퇴
	public void deleteMember(MemberVO member);
}
