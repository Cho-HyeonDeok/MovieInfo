<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<h1>회원상세정보</h1>
	<br>
	<form id="memberInfo" method="post">
		<div>
			<label>아이디</label>
		</div>
		<div>
			<input type="text" name="id" value="${info.id}" readonly="readonly">
		</div>

		<div>
			<label>비밀번호</label>
		</div>
		<div>
			<input type="password" value="${info.pwd}" readonly="readonly">
		</div>

		<div>
			<label>닉네임</label>
		</div>
		<div>
			<input type="text" name="nickname" value="${info.nickname}"
				id="nickname">
		</div>

		<div>
			<label>휴대폰번호</label>
		</div>
		<div>
			<input type="text" value="${info.phone}" readonly="readonly">
		</div>

		<div>
			<label>이메일</label>
		</div>
		<div>
			<input type="text" value="${info.email}" readonly="readonly">
		</div>

		<div>
			<label>가입일</label>
		</div>
		<div>
			<input type="text"
				value="<fmt:formatDate value="${info.indate}" pattern="yyyy-MM-dd" />"
				readonly="readonly">
		</div>

		<div>
			<label>프로필</label>
		</div>
		<div>
			<input type="text" value="${info.image}">
		</div>

		<div>
			<label>관리자권한(0:일반회원, 1:관리자)</label>
		</div>
		<div>
			<input type="text" name="admin" value="${info.admin}" id="admin" placeholder="0 또는 1 입력">
		</div>

		<div>
			<label>차단유무(0:차단X, 1:차단O)</label>
		</div>
		<div>
			<input type="text" name="block" value="${info.block}" id="block" placeholder="0 또는 1 입력">
		</div>
	</form>

	<div>
		<input type="button" id="update_button" value="수정">
		<button type="button" onclick="location.href='/admin/memberList'">닫기</button>
	</div>

	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 수정하기 버튼 클릭 메서드 */
		$("#update_button").click(function() {
			/* 입력한 변수 */
			var nickname = $("#nickname").val();
			var admin = $("#admin").val();
			var block = $("#block").val();

			/* 유효성 검사 */
			if (nickname == "") {
				alert("닉네임을 입력하세요.");
				return false;
			} else if (admin == "") {
				alert("관리자 권한을 입력하세요.");
				return false;
			} else if (block == "") {
				alert("차단 유무를 입력하세요.");
				return false;
			} else {
				/* 회원정보 수정 동의여부 */
				if (confirm("회원정보를 수정하시겠습니까?")) {
					/* 회원정보 수정 메서드 서버 요청 */
					$("#memberInfo").attr("action", "/admin/memberUpdate.do");
					$("#memberInfo").submit();
				} else {
					document.location = '/admin/memberDetail?id=${info.id}';
				}
				return true;
			}
		});
	</script>
</body>
</html>