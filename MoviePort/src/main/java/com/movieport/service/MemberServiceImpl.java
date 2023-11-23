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

	// 아이디 찾기
	@Override
	public int findIdCheck(MemberVO member) throws Exception {
		return memberMapper.findIdCheck(member);
	}
	
	// 아이디 찾기 결과
	@Override
	public MemberVO findId(MemberVO member) throws Exception {
		return memberMapper.findId(member);
	}

	// 비밀번호 찾기
	@Override
	public int findPwdCheck(MemberVO member) throws Exception {
		return memberMapper.findPwdCheck(member);
	}

	// 임시 비밀번호 이메일로 발송, 기존 비밀번호를 임시 비밀번호로 변경
	@Override
	public void findPwd(MemberVO member) throws Exception {
		memberMapper.findPwd(member);
	}
}
