package com.movieport.service;

import java.util.List;

import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
import com.movieport.model.ReviewVO;

public interface AdminService {
	// 회원리스트 불러오기
	public List<MemberVO> memberList() throws Exception;

	// 회원상세정보 불러오기
	public MemberVO memberDetail(String id) throws Exception;

	// 회원정보 수정하기
	public int memberInfoUpdate(MemberVO member) throws Exception;

	// 영화리스트 불러오기
	public List<MovieVO> movieList() throws Exception;

	// 영화추가하기
	public void movieEnroll(MovieVO movie) throws Exception;

	// 영화상세정보 불러오기
	public MovieVO movieDetail(String m_code) throws Exception;

	// 영화정보 수정하기
	public int movieInfoUpdate(MovieVO movie) throws Exception;

	// 영화정보 삭제하기
	public String movieDelete(String m_code) throws Exception;

	// 리뷰 리스트 불러오기
	public List<ReviewVO> getReviewList() throws Exception;

	// 리뷰 상세
	public ReviewVO getReviewListDetail(int reviewid) throws Exception;

	// 리뷰 삭제
	public void deleteReview(ReviewVO review) throws Exception;
}
