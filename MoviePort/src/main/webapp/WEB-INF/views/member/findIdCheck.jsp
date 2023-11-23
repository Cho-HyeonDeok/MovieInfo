<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>아이디 찾기</h1>
	<form id="findForm" action="/member/findIdCheck" method="post">
		<div id="form-group">
			<input type="text" name="name" id="name" placeholder="회원성명">
		</div>
		<div id="form-group">
			<input type="text" name="phone" id="phone"
				placeholder="휴대폰번호('-'포함입력)">
		</div>
		<div>
			<button type="submit">아이디찾기</button>
			<button type="button" onclick="location.href='/member/login'">로그인하기</button>
			<button type="button" onclick="location.href='/main'">메인으로</button>
		</div>
	</form>

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
</body>
</html>