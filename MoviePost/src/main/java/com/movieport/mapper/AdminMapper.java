package com.movieport.mapper;

import java.util.List;

import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;

public interface AdminMapper {
	// 회원리스트 불러오기
	public List<MemberVO> memberList();

	// 회원상세정보 불러오기
	public MemberVO memberDetail(String id);

	// 회원정보 수정하기
	public int memberInfoUpdate(MemberVO member);
	
	// 영화추가하기
	public void movieEnroll(MovieVO movie);
	
	// 영화리스트 불러오기
	public List<MovieVO> movieList();
	
	// 영화상세정보 불러오기
	public MovieVO movieDetail(String m_code);
	
	// 영화정보 수정하기
	public int movieInfoUpdate(MovieVO movie);
	
	// 영화삭제하기
	public void movieDelete(MovieVO movie);
}
