package com.movieport.service;

import java.util.HashMap;

import com.movieport.model.MemberVO;


public interface MemberService {
	// 회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	// 아이디 중복검사
	public int idCheck(String id) throws Exception;

	// 로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
<<<<<<< HEAD
	
	// 카카오 로그인
	public MemberVO kakaoLogin(MemberVO member) throws Exception;
=======

>>>>>>> branch 'JaeYoon' of https://github.com/Cho-HyeonDeok/MoviePort.git
}
