package com.movieport.mapper;

import com.movieport.model.MemberVO;

public interface MypageMapper {
	// 회원정보 불러오기
	public MemberVO memberInfo(String id);

	// 회원정보 수정하기
	public int memberUpdate(MemberVO member);
	
	// 비밀번호 변경하기
	public int pwdUpdate(MemberVO member);

	// 회원탈퇴
	public void deleteMember(MemberVO member);
}
