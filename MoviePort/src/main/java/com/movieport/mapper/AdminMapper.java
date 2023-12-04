package com.movieport.mapper;

import java.util.List;

import com.movieport.model.MemberVO;

public interface AdminMapper {
	// 회원리스트 불러오기
	public List<MemberVO> memberList();

	// 회원상세정보 불러오기
	public MemberVO memberDetail(String id);

	// 회원정보 수정하기
	public int memberInfoUpdate(MemberVO member);
}
