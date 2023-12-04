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
	<h1>리뷰 상세</h1>
	<br>
	<form id="reviewdetail" method="post">
		<div>
			<label>리뷰번호</label>
		</div>
		<div>
			<input type="text" name="reviewid" value="${detail.reviewid}"
				readonly="readonly">
		</div>

		<div>
			<label>아이디</label>
		</div>
		<div>
			<input type="text" name="id" value="${detail.id}" readonly="readonly">
		</div>

		<div>
			<label>영화코드</label>
		</div>
		<div>
			<input type="text" name="m_code" value="${detail.m_code}" id="m_code"
				readonly="readonly">
		</div>

		<div>
			<label>영화제목</label>
		</div>
		<div>
			<input type="text" value="${detail.title}" readonly="readonly">
		</div>

		<div>
			<label>리뷰내용</label>
		</div>
		<div>
			<input type="text" value="${detail.comments}" readonly="readonly">
		</div>

		<div>
			<label>평점</label>
		</div>
		<div>
			<input type="text" value="${detail.rate}" readonly="readonly">
		</div>

		<div>
			<label>가입일</label>
		</div>
		<div>
			<input type="text"
				value="<fmt:formatDate value="${detail.writedate}" pattern="yyyy-MM-dd" />"
				readonly="readonly">
		</div>
	</form>

	<div>
		<input type="button" id="delete_button" value="삭제">
		<button type="button" onclick="location.href='/admin/reviewList'">닫기</button>
	</div>

	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 삭제 버튼 클릭 메서드 */
		$("#delete_button").click(function() {
			/* 삭제 메서드 서버 요청 */
			$("#reviewdetail").attr("action", "/admin/deleteReview");
			$("#reviewdetail").submit();
		});
	</script>
</body>
</html>