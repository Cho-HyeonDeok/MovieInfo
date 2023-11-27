<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<h1>비밀번호 찾기</h1>
	<form id="findForm" method="post">
		<div id="form-group">
			<input type="text" name="id" id="id" placeholder="아이디">
		</div>
		<div id="form-group">
			<input type="text" name="email" id="email" placeholder="이메일">
		</div>
		<div>
			<input type="button" id="find_pwd_button" value="비밀번호찾기">
			<button type="button" onclick="location.href='/member/login'">로그인하기</button>
			<button type="button" onclick="location.href='/main'">메인으로</button>
		</div>
	</form>

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
		
		/* 비밀번호 찾기 버튼 클릭 메서드 */
		$("#find_pwd_button").click(function() {
			/* 입력한 변수 */
			var id = $("#id").val();
			var email = $("#email").val();

			/* 입력 이메일 형식 유효성 검사 */
			function mailFormCheck(email) {
				var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
				return form.test(email);
			}

			/* 유효성 검사 */
			if (id == "") {
				alert("아이디를 입력하세요.");
				return false;
			} else if (email == "") {
				alert("이메일을 입력하세요.");
				return false;
			} else if (!mailFormCheck(email)) {
				alert("올바르지 못한 이메일 형식입니다.");
				return false;
			} else {
				/* 비밀번호 찾기 메서드 서버 요청 */
				$("#findForm").attr("action", "/member/findPwdCheck");
				$("#findForm").submit();
				return true;
			}
		});
	</script>
</body>
</html>