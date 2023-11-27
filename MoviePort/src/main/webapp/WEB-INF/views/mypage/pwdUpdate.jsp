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
	<h1>내 정보</h1>
	<form id="pwdChange" method="post">
		<input type="hidden" name="id" value="${info.id}">
		<table>
			<tr>
				<td>새 비밀번호</td>
				<td><input type="password" name="pwd" id="pwd"></td>
			</tr>

			<tr>
				<td>새 비밀번호 확인</td>
				<td><input type="password" id="pwdck"></td>
			</tr>
		</table>
	</form>

	<div>
		<input type="button" id="update_button" value="변경하기">
		<button type="button" onclick="location.href='/mypage/mypageMain'">취소</button>
	</div>


	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 변경하기 버튼 클릭 메서드 */
		$("#update_button").click(function() {
			/* 입력한 변수 */
			var pwd = $("#pwd").val();
			var pwdck = $("#pwdck").val();

			/* 유효성 검사 */
			if (pwd == "") {
				alert("비밀번호를 입력하세요.");
				return false;
			} else if (pwdck == "") {
				alert("비밀번호 확인을 입력하세요.");
				return false;
			} else if (pwd != pwdck) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			} else {
				/* 비밀번호 변경 동의여부 */
				if (confirm("비밀번호를 변경하시겠습니까?")) {
					/* 비밀번호 변경 메서드 서버 요청 */
					$("#pwdChange").attr("action", "/mypage/pwdUpdate");
					$("#pwdChange").submit();
				} else {
					document.location = '/mypage/pwdUpdate';
				}
				return true;
			}
		});
	</script>
</body>
</html>