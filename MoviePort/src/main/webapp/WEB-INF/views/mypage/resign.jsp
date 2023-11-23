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
	<h1>회원탈퇴</h1>
	<form id="myInfo" action="/mypage/deleteMember" method="post">
		<div>
			<div>아이디</div>
			<div>
				<input type="text" name="id" id="id" value="${info.id}"
					readonly="readonly">
			</div>
		</div>

		<div>
			<div>이메일</div>
			<div>
				<input type="text" id="email" name="email">
			</div>
		</div>
	</form>

	<div>
		<input type="button" id="delete_button" value="탈퇴하기">
	</div>

	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		// 회원탈퇴 버튼 클릭 시      
		$('#delete_button').click(function() {
			/* 입력한 변수 */
			var email = $("#email").val();
			
			/* 입력 이메일 형식 유효성 검사 */
			function mailFormCheck(email) {
				var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
				return form.test(email);
			}

			if (email == "") {
				alert("이메일을 입력하세요.");
				return false;
			} else if (!mailFormCheck(email)) {
				alert("올바르지 못한 이메일 형식입니다.");
				return false;
			} else {
				/* 회원탈퇴 동의여부 */
				if (confirm("회원탈퇴를 하시겠습니까?")) {
					/* 회원탈퇴메서드 서버 요청 */
					$("#myInfo").attr("action", "/mypage/deleteMember");
					$("#myInfo").submit();
				} else {
					document.location = '/mypage/resign';
				}
				return true;
			}
		});
	</script>
</body>
</html>