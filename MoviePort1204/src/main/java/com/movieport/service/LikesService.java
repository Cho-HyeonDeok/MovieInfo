package com.movieport.service;

import java.util.List;

import com.movieport.model.LikesVO;

public interface LikesService {
	
	/* 좋아요 추가 */
	public int likesInsert(LikesVO likes);
	
	/* 좋아요 목록 */
	public List<LikesVO> LikesSelectList(String id); 
	
	/* 좋아요 삭제 */
	public int likesDelete(String l_num);
}
