package com.movieport.model;

import java.util.Date;

public class MemberVO {
	// 회원아이디
	private String id;

	// 회원비밀번호
	private String pwd;

	// 회원성명
	private String name;

	// 회원닉네임
	private String nickname;

	// 휴대폰번호
	private String phone;

	// 이메일
	private String email;

	// 프로필사진
	private String image;

	// 가입일
	private Date indate;

	// 관리자권환
	private String admin;

	// 차단유무
	private String block;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Date getIndate() {
		return indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getBlock() {
		return block;
	}

	public void setBlock(String block) {
		this.block = block;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", nickname=" + nickname + ", phone=" + phone
				+ ", email=" + email + ", image=" + image + ", indate=" + indate + ", admin=" + admin + ", block="
				+ block + "]";
	}

}
