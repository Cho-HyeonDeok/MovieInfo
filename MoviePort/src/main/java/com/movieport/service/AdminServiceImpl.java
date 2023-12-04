package com.movieport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.AdminMapper;
import com.movieport.model.MemberVO;
import com.movieport.model.ReviewVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminMapper adminMapper;

	// 회원리스트 불러오기
	@Override
	public List<MemberVO> memberList() throws Exception {
		return adminMapper.memberList();
	}

	// 회원상세정보 불러오기
	@Override
	public MemberVO memberDetail(String id) throws Exception {
		return adminMapper.memberDetail(id);
	}

	// 회원정보 수정하기
	@Override
	public int memberInfoUpdate(MemberVO member) throws Exception {
		int result = 0;

		try {
			result = adminMapper.memberInfoUpdate(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 리뷰 리스트 불러오기
	@Override
	public List<ReviewVO> getReviewList() throws Exception {
		return adminMapper.getReviewList();
	}

	// 리뷰 상세
	@Override
	public ReviewVO getReviewListDetail(int reviewid) throws Exception {
		return adminMapper.getReviewListDetail(reviewid);
	}

	// 리뷰 삭제
	@Override
	public void deleteReview(ReviewVO review) throws Exception {
		adminMapper.deleteReview(review);
	}
}
