<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>비밀번호 찾기</h1>
	<form id="findForm" action="/member/findPwdCheck" method="post">
		<div id="form-group">
			<input type="text" name="id" id="id" placeholder="아이디">
		</div>
		<div id="form-group">
			<input type="text" name="email" id="email" placeholder="이메일">
		</div>
		<div>
			<button type="submit">비밀번호찾기</button>
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