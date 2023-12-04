package com.movieport.mapper;

import java.util.List;

import com.movieport.model.Criteria;
import com.movieport.model.LikesVO;

public interface LikesMapper {
	
	/* 좋아요 삽입 */
	public void movieInsert(int m_code);
	
	/* 좋아요 삭제 */
	public void movieDelete(int m_code);
	
	/* 좋아요 목록 */
	public List<LikesVO> movieSelectList(Criteria cri);
	

}
