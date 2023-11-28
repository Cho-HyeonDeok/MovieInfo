package com.movieport.model;

public class MovieVO {
	// 영화 고유 번호
	private String m_code;
	
	// 영화 제목(한글)
	private String title;
	
	// 영화 길이
	private String runtime;
	
	// 영화 썸네일 이미지 경로
	private String thumb;
	
	// 영화 줄거리
	private String content;
	
	// 영화 총 평점
	private String totalrate;
	
	// 영화 좋아요 수
	private String likes;
	
	// 영화 조회 수
	private String hits;
	
	// 영화 상영일
	private String showdate;
	
	// 영화 상태 (개봉, 미개봉 등)
	private String type;
	
	// 영화 트레일러 (동영상 링크 저장)
	private String trailer;
	
	// 영화 랭킹
	private String ranking;
	
	// 성인 영화 여부
	private String adult;
	
	// 영화 이미지 경로
	private String image;
	
	// 영화 장르
	private String genres;
	
	// 영화 기존 언어
	private String language;
	
	// 영화 제목 (영문 및 기타 언어)
	private String original_title;
	
	// 영화 유명도
	private String popularity;
	
	// 영화 비디오? 잘 모름
	private String video;
	
	// 영화 평점 투표 수
	private String rate_count;

	public String getM_code() {
		return m_code;
	}

	public void setM_code(String m_code) {
		this.m_code = m_code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRuntime() {
		return runtime;
	}

	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}

	public String getThumb() {
		return thumb;
	}

	public void setThumb(String thumb) {
		this.thumb = thumb;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTotalrate() {
		return totalrate;
	}

	public void setTotalrate(String totalrate) {
		this.totalrate = totalrate;
	}

	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}

	public String getHits() {
		return hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getShowdate() {
		return showdate;
	}

	public void setShowdate(String showdate) {
		this.showdate = showdate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	public String getRanking() {
		return ranking;
	}

	public void setRanking(String ranking) {
		this.ranking = ranking;
	}

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getGenres() {
		return genres;
	}

	public void setGenres(String genres) {
		this.genres = genres;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getOriginal_title() {
		return original_title;
	}

	public void setOriginal_title(String original_title) {
		this.original_title = original_title;
	}

	public String getPopularity() {
		return popularity;
	}

	public void setPopularity(String popularity) {
		this.popularity = popularity;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getRate_count() {
		return rate_count;
	}

	public void setRate_count(String rate_count) {
		this.rate_count = rate_count;
	}

	@Override
	public String toString() {
		return "MovieVO [m_code=" + m_code + ", title=" + title + ", runtime=" + runtime + ", thumb=" + thumb
				+ ", content=" + content + ", totalrate=" + totalrate + ", likes=" + likes + ", hits=" + hits
				+ ", showdate=" + showdate + ", type=" + type + ", trailer=" + trailer + ", ranking=" + ranking
				+ ", adult=" + adult + ", image=" + image + ", genres=" + genres + ", language=" + language
				+ ", original_title=" + original_title + ", popularity=" + popularity + ", video=" + video
				+ ", rate_count=" + rate_count + "]";
	}
}
