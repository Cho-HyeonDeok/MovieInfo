package com.movieport.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movieport.mapper.LikesMapper;
import com.movieport.model.LikesVO;

@Service
public class LikesServiceImpl implements LikesService{
	
	@Autowired
	private LikesMapper likesMapper;

	@Override
	public int likesInsert(LikesVO likes) {
		
		// 좋아요 데이터 체크
		LikesVO checkLikes = likesMapper.checkLikes(likes);
		
		if(checkLikes != null) {
			return 2;
		}
		
		// 좋아요 등록 & 에러 시 0 반환
		try {
			return likesMapper.LikesInsert(likes);
		} catch (Exception e) {
			return 0;
		}
		
	}

	/* 좋아요 목록 */
	@Override
	public List<LikesVO> LikesSelectList(String id) {
		
		List<LikesVO> likes = likesMapper.LikesSelectList(id);
		
		return likes;
	}
	
	@Override
	public int likesDelete(String l_num) {
		
		return likesMapper.LikesDelete(l_num);
	}

	

}
