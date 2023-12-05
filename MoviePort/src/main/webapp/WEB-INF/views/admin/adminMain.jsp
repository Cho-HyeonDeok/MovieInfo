<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
.welcome_text {
	color: black;
	margin-top: 40px;
	text-align: center;
	font-weight: bold;
}

.work_button_wrap {
	width: 720px;
	height: 160px;
	margin-top: 40px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
}

.work_button:link, .work_button:visited {
	background-color: #5C89CC;
	color: #FFFFFF;
	padding: 15px 25px;
	text-align: center;
	text-decoration: none;
	font-weight: bold;
	display: inline-block;
	margin: 10px;
}

.work_button:hover, .work_button:active {
	background-color: #3B557B;
}
</style>
</head>
<body>
	<%@ include file="admin_header.jsp"%>
	<hr>

	<h1 class="welcome_text">관리자 페이지에 오신 것을 환영합니다.</h1>
	<div class="work_button_wrap">
		<a class="work_button" href="/admin/memberList">회원리스트</a> <a
			class="work_button" href="/admin/movies">영화리스트</a> <a
			class="work_button" href="/admin/reviewList">리뷰리스트</a>
	</div>
</body>
</html>