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
	<h1>아이디 찾기</h1>
	<form id="findForm" method="post">
		<div id="form-group">
			<input type="text" name="name" id="name" placeholder="회원성명">
		</div>
		<div id="form-group">
			<input type="text" name="phone" id="phone"
				placeholder="휴대폰번호('-'포함입력)">
		</div>
		<div>
			<input type="button" id="find_id_button" value="아이디찾기">
			<button type="button" onclick="location.href='/member/login'">로그인하기</button>
			<button type="button" onclick="location.href='/main'">메인으로</button>
		</div>
	</form>

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 아이디 찾기 버튼 클릭 메서드 */
		$("#find_id_button").click(function() {
			/* 입력한 변수 */
			var name = $("#name").val();
			var phone = $("#phone").val();

			/* 입력 휴대폰 번호 형식 유효성 검사 */
			function phoneFormCheck(phone) {
				var phoneRule = /^010-[0-9]{4}-[0-9]{4}$/;
				return phoneRule.test(phone);
			}

			/* 유효성 검사 */
			if (name == "") {
				alert("회원성명을 입력하세요.");
				return false;
			} else if (phone == "") {
				alert("휴대폰 번호를 입력하세요.");
				return false;
			} else if (!phoneFormCheck(phone)) {
				alert("올바르지 못한 휴대폰 번호 형식입니다.");
				return false;
			} else {
				/* 아이디 찾기 메서드 서버 요청 */
				$("#findForm").attr("action", "/member/findIdCheck");
				$("#findForm").submit();
				return true;
			}
		});
	</script>
</body>
</html>