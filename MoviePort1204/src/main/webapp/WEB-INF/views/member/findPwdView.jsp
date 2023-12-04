<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 찾기 결과</h1>
	<br>
	<br>
	<h3>아래의 이메일로 임시 비밀번호가 발송되었습니다.</h3>
	<h3>${email}</h3>
	<br>
	<span style="color: red">※임시 비밀번호로 로그인 후 반드시 비밀번호를 변경해주세요!!!</span>

	<div>
		<button type="button" onclick="location.href='/member/login'">로그인하기</button>
		<button type="button" onclick="location.href='/main'">메인으로</button>
	</div>
</body>
</html>