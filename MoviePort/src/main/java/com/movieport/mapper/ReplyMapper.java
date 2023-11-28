package com.movieport.mapper;

import com.movieport.model.UpdateReplyDTO;

public interface ReplyMapper {
	
	/* 평점 평균 구하기*/
	public Double getRatingAverage(int m_code);
	
	/* 평점 총 인원수 구하기 */
	public int getRatingCount(int m_code);
	
	/* 평균 평점 반영하기 */
	public int updateRating(UpdateReplyDTO dto);

	/* 평점 총 인원수 반영하기 */
	public int updateRateCount(UpdateReplyDTO dto);
	
	
}
