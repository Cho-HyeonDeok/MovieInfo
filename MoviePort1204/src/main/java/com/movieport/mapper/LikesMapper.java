package com.movieport.mapper;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.LikesVO;
import com.movieport.model.MemberVO;
import com.movieport.model.MovieVO;

public interface LikesMapper {
	
	/* 좋아요 삽입 */
	public int LikesInsert(LikesVO likes) throws Exception;
	
	/* 좋아요 삭제 */
	public int LikesDelete(String l_num);
	
	/* 좋아요 목록 */
	public List<LikesVO> LikesSelectList(String id);
	
	/* 좋아요 확인 */
	public LikesVO checkLikes(LikesVO likes);

}
