package com.movieport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.AdminMapper;
import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;
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

	// 영화리스트 불러오기
	@Override
	public List<MovieVO> movieList() throws Exception {
		return adminMapper.movieList();
	}

	// 영화추가하기
	@Override
	public void movieEnroll(MovieVO movie) throws Exception {
		adminMapper.movieEnroll(movie);
	}

	// 영화상세정보 불러오기
	@Override
	public MovieVO movieDetail(String m_code) throws Exception {
		return adminMapper.movieDetail(m_code);
	}

	// 영화정보 수정하기
	@Override
	public int movieInfoUpdate(MovieVO movie) throws Exception {
		int result = 0;
		try {
			result = adminMapper.movieInfoUpdate(movie);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// 영화정보 삭제하기
	@Override
	public String movieDelete(String m_code) throws Exception {
		return adminMapper.movieDelete(m_code);
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
