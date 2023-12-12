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
	<%@ include file="admin_header.jsp"%>
	<hr>

	<h1 style="color: #000; text-align: center; padding-top: 30px;">회원상세정보</h1>


	<div class="untree_co-section" id="contact-section">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-4 col-sm-4 col-md-4 col-lg-6">
					<form id="memberInfo" method="post">
						<div class="row justify-content-center text-center">
							<div class="col-12 form-group" style="padding-bottom: 15px;">
								<span>아이디</span> <input id="id_input" name="id"
									class="form-control" value="${info.id}" readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>비밀번호</span> <input id="pw_input" type="password"
									name="pwd" class="form-control" value="${info.pwd}"
									readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>닉네임</span> <input id="nickname" class="form-control"
									placeholder="Password Check" value="${info.nickname}">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>휴대폰 번호</span> <input id="user_input" name="name"
									class="form-control" value="${info.phone}" readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span> 이메일</span> <input id="nick_input" name="nickname"
									class="form-control" value="${info.email}" readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>가입일</span> <input id="phone_input" name="phone"
									class="form-control"
									value="<fmt:formatDate value="${info.indate}" pattern="yyyy-MM-dd" />"
									readonly="readonly">
							</div>
						</div>

						<div class="row" style="padding-bottom: 15px;">
							<div id="email_box_css" class="col-12 form-group">
								<span>관리자 권한(0:일반회원, 1:관리자)</span> <input type="text"
									name="admin" value="${info.admin}" id="admin"
									class="form-control" placeholder="0 또는 1 입력">
							</div>

						</div>

						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>차단유무(0:차단X, 1:차단O)</span> <input type="text" name="block"
									class="form-control" value="${info.block}" id="block"
									placeholder="0 또는 1 입력">
							</div>
						</div>
						<!-- ROW종료 -->
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="justify-content-center text-center">
		<input type="button" id="update_button" class="btn btn-black"
			value="수정">
		<button type="button" onclick="location.href='/admin/memberList'"
			class="btn btn-white">닫기</button>
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