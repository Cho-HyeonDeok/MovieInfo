<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a:link, a:visited {
	background-color: #F5D08A;
	color: #FFFFFF;
	padding: 15px 25px;
	text-align: center;
	text-decoration: none;
	font-weight: bold;
	display: inline-block;
}

a:hover, a:active {
	background-color: #D2691E;
}
</style>
</head>
<body>
	<h1>관리자 페이지 메인</h1>
	<div>
		<a href="/admin/memberList">회원리스트</a> 
		<a href="/admin/movies">영화리스트</a>
		<a href="/admin/reviewList">리뷰리스트</a>
	</div>
</body>
</html>