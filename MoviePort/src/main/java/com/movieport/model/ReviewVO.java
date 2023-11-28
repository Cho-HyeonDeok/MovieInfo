package com.movieport.model;

import java.util.Date;

public class ReviewVO {
	// 리뷰번호
	private int reviewid;

	// 회원아이디
	private String id;

	// 영화코드
	private String m_code;

	// 리뷰내용
	private String comments;

	// 평점
	private double rate;

	// 블라인드 여부체크
	private String blind;

	// 스포일러 여부체크
	private String spoiler;

	// 작성일
	private Date writedate;

	public int getReviewid() {
		return reviewid;
	}

	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
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

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	public String getBlind() {
		return blind;
	}

	public void setBlind(String blind) {
		this.blind = blind;
	}

	public String getSpoiler() {
		return spoiler;
	}

	public void setSpoiler(String spoiler) {
		this.spoiler = spoiler;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	@Override
	public String toString() {
		return "ReviewVO [reviewid=" + reviewid + ", id=" + id + ", m_code=" + m_code + ", comments=" + comments
				+ ", rate=" + rate + ", blind=" + blind + ", spoiler=" + spoiler + ", writedate=" + writedate + "]";
	}

}
