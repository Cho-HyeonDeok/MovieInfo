<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
	<h1>메인페이지</h1>
	<ul>
		<c:if test="${member == null }"> <!-- 로그인 안했을때 -->
			<li><a href="/member/login">로그인</a></li>
			<li><a href="/member/join">회원가입</a></li>
		</c:if>	
	</ul>
	<c:if test="${member != null }"> <!-- 로그인 했을때 -->
		<div class="login_success_area">
			<span>닉네임 : ${member.nickname }</span>
			<a href="/member/logout.do">로그아웃</a>
		</div>
	</c:if>	
</body>
</html>