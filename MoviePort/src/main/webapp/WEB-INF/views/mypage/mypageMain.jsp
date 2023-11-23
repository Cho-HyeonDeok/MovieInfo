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
		<li><a href="/mypage/reviews">내가 쓴 글 목록</a></li>
		<li><a href="/mypage/likes">좋아요 표시한 목록</a></li>
		<li><a href="/mypage/resign">회원탈퇴</a></li>
	</ul>



	<h1>내 정보</h1>
	<form id="myInfo" action="/mypage/myInfoUpdate" method="post">
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
				<td>비밀번호</td>
				<td><input type="password" name="pwd" id="pwd"
					value="${info.pwd}"></td>
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
	</div>


	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 수정하기 버튼 클릭 메서드 */
		$("#update_button").click(function() {
			/* 회원정보 수정 동의여부 */
			if (confirm("회원정보를 수정하시겠습니까?")) {
				/* 회원정보 수정 메서드 서버 요청 */
				$("#myInfo").attr("action", "/mypage/myInfoUpdate");
				$("#myInfo").submit();
			} else {
				document.location = '/mypage/mypageMain';
			}
		});
	</script>
</body>
</html>