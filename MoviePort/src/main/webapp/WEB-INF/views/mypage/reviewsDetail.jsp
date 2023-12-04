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
	<h1>리뷰 상세</h1>
	<form id="reviewInfo" method="post">
		<div id="input_wrap">
			<div id="movieTitle_div">
				<h2>${detail.title}</h2>
			</div>
			<div id="rate_div">
				<h4>평점</h4>
				<select name="rate">
					<option value="0.5">0.5</option>
					<option value="1.0">1.0</option>
					<option value="1.5">1.5</option>
					<option value="2.0">2.0</option>
					<option value="2.5">2.5</option>
					<option value="3.0">3.0</option>
					<option value="3.5">3.5</option>
					<option value="4.0">4.0</option>
					<option value="4.5">4.5</option>
					<option value="5.0">5.0</option>
				</select>
			</div>
			<div id="comments_div">
				<h4>리뷰</h4>
				<textarea id="comments" name="comments">${detail.comments}</textarea>
			</div>
		</div>

		<input type="hidden" name="reviewid" value="${detail.reviewid}">
	</form>

	<div id="input_wrap">
		<input type="button" id="update_button" value="수정"> <input
			type="button" id="delete_button" value="삭제">
		<button type="button" onclick="location.href='/mypage/reviews'">닫기</button>
	</div>


	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 수정 버튼 클릭 메서드 */
		$("#update_button").click(function() {
			/* 입력한 변수 */
			var comments = $("#comments").val();

			/* 유효성 검사 */
			if (comments == "") {
				alert("내용을 입력하세요.");
				return false;
			} else {
				/* 리뷰 수정 메서드 서버 요청 */
				$("#reviewInfo").attr("action", "/mypage/updateReview");
				$("#reviewInfo").submit();
				return true;
			}
		});

		/* 삭제 버튼 클릭 메서드 */
		$("#delete_button").click(function() {
			/* 리뷰 삭제 메서드 서버 요청 */
			$("#reviewInfo").attr("action", "/mypage/deleteReview");
			$("#reviewInfo").submit();
		});
	</script>
</body>
</html>