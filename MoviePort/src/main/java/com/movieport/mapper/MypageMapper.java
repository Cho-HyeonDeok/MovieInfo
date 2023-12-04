package com.movieport.mapper;

import java.util.List;

import com.movieport.model.MemberVO;
import com.movieport.model.ReviewVO;

public interface MypageMapper {
	// 회원정보 불러오기
	public MemberVO memberInfo(String id);

	// 회원정보 수정하기
	public int memberUpdate(MemberVO member);
	
	// 비밀번호 변경하기
	public int pwdUpdate(MemberVO member);

	// 회원탈퇴
	public void deleteMember(MemberVO member);
	
	// 내가 작성 리뷰 리스트 불러오기
	public List<ReviewVO> getMyReviewList(String id);
	
	// 리뷰 상세
	public ReviewVO getMyReviewListDetail(int reviewid);
	
	// 리뷰 수정
	public int updateReview(ReviewVO review);
	
	// 리뷰 삭제
	public void deleteReview(ReviewVO review);
}
