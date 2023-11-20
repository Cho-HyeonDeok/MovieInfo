package com.movieport.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.MemberMapper;
import com.movieport.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	// 회원가입
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		memberMapper.memberJoin(member);
		
	}

	// 아이디 중복확인
	@Override
	public int idCheck(String id) throws Exception {
		return memberMapper.idCheck(id);
	}
	
	// 로그인
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		return memberMapper.memberLogin(member);
	}
}
