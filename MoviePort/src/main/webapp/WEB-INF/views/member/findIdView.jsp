<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>아이디 찾기 결과</h1>

	<div>
		<h2>
			회원님의 아이디는 <span style="color: blue">${member.id}</span> 입니다.
		</h2>
	</div>

	<div>
		<button type="button" onclick="location.href='/member/findPwdCheck'">비밀번호찾기</button>
		<button type="button" onclick="location.href='/member/login'">로그인하기</button>
		<button type="button" onclick="location.href='/main'">메인으로</button>
	</div>

</body>
</html>