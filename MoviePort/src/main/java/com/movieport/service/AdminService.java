package com.movieport.service;

import java.util.List;

import com.movieport.model.MemberVO;

public interface AdminService {
	// 회원리스트 불러오기
	public List<MemberVO> memberList() throws Exception;

	// 회원상세정보 불러오기
	public MemberVO memberDetail(String id) throws Exception;

	// 회원정보 수정하기
	public int memberInfoUpdate(MemberVO member) throws Exception;
}
