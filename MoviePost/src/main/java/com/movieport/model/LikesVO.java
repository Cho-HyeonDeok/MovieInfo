package com.movieport.model;

public class LikesVO {
	
	/* 좋아요 번호 */
	private String l_num;
	
	/* 유저 아이디 */
	private String id;

	/* 영화 번호 */
	private String m_code;

	public String getL_num() {
		return l_num;
	}

	public void setL_num(String l_num) {
		this.l_num = l_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	@Override
	public String toString() {
		return "LikesVO [l_num=" + l_num + ", id=" + id + ", m_code=" + m_code + "]";
	}
}
