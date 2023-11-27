package com.movieport.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.MypageMapper;
import com.movieport.model.MemberVO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	MypageMapper mypageMapper;
	
	// 회원정보 불러오기
	@Override
	public MemberVO memberInfo(String id) throws Exception {
		MemberVO member = null;
		try {
			member = mypageMapper.memberInfo(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return member;
	}

	
	// 회원정보 수정하기
	@Override
	public int memberUpdate(MemberVO member) throws Exception {
		int result = 0;
		
		try {
			result = mypageMapper.memberUpdate(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


	// 회원탈퇴
	@Override
	public void deleteMember(MemberVO member) throws Exception {
		mypageMapper.deleteMember(member);		
	}
	
}
