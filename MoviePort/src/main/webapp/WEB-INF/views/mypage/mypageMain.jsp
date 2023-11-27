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
	<h1>마이페이지</h1>
	<ul>
		<li><a href="/mypage/pwdUpdate">비밀번호 변경</a></li>
		<li><a href="/mypage/reviews">내가 쓴 글 목록</a></li>
		<li><a href="/mypage/likes">좋아요 표시한 목록</a></li>
		<li><a href="/mypage/resign">회원탈퇴</a></li>
	</ul>



	<h1>내 정보</h1>
	<form id="myInfo" method="post">
		<table>
			<tr>
				<td>프로필</td>
				<td>${info.image}</td>
			</tr>

			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" id="id" value="${info.id}"
					readonly="readonly"></td>
			</tr>

			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name"
					value="${info.name}" readonly="readonly"></td>
			</tr>

			<tr>
				<td>닉네임</td>
				<td><input type="text" name="nickname" id="nickname"
					value="${info.nickname}"></td>
			</tr>

			<tr>
				<td>휴대폰 번호</td>
				<td><input type="text" name="phone" id="phone"
					value="${info.phone}" placeholder="'-'포함 입력"></td>
			</tr>

			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="email"
					value="${info.email}"></td>
			</tr>
		</table>
	</form>

	<div>
		<input type="button" id="update_button" value="수정하기">
		<button type="button" onclick="location.href='/main'">홈으로</button>
	</div>


	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 수정하기 버튼 클릭 메서드 */
		$("#update_button")
				.click(
						function() {
							/* 입력한 변수 */
							var nickname = $("#nickname").val();
							var phone = $("#phone").val();
							var email = $("#email").val();

							/* 입력 이메일 형식 유효성 검사 */
							function mailFormCheck(email) {
								var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
								return form.test(email);
							}

							/* 입력 휴대폰 번호 형식 유효성 검사 */
							function phoneFormCheck(phone) {
								var phoneRule = /^010-[0-9]{4}-[0-9]{4}$/;
								return phoneRule.test(phone);
							}

							/* 유효성 검사 */
							if (nickname == "") {
								alert("닉네임을 입력하세요.");
								return false;
							} else if (phone == "") {
								alert("휴대폰 번호를 입력하세요.");
								return false;
							} else if (!phoneFormCheck(phone)) {
								alert("올바르지 못한 휴대폰 번호 형식입니다.");
								return false;
							} else if (email == "") {
								alert("이메일을 입력하세요.");
								return false;
							} else if (!mailFormCheck(email)) {
								alert("올바르지 못한 이메일 형식입니다.");
								return false;
							} else {
								/* 회원정보 수정 동의여부 */
								if (confirm("회원정보를 수정하시겠습니까?")) {
									/* 회원정보 수정 메서드 서버 요청 */
									$("#myInfo").attr("action",
											"/mypage/myInfoUpdate");
									$("#myInfo").submit();
								} else {
									document.location = '/mypage/mypageMain';
								}
								return true;
							}
						});
	</script>
</body>
</html>