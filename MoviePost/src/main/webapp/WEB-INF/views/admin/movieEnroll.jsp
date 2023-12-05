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
	<div>
		<form id="movieInfo" method="post">
			<div>
				<div>
					<span>영화추가</span>
				</div>
				<div>
					<div>영화코드</div>
					<div>
						<input name="m_code">
					</div>
				</div>
				<div>
					<div>제목</div>
					<div>
						<input name="title">
					</div>
				</div>
				<div>
					<div>기존제목</div>
					<div>
						<input name="original_title">
					</div>
				</div>
				<div>
					<div>러닝타임</div>
					<div>
						<input name="runtime">
					</div>
				</div>
				<div>
					<div>썸네일</div>
					<div>
						<input name="thumb">
					</div>
				</div>
				<div>
					<div>줄거리</div>
					<div>
						<textarea rows="10" cols="40" name="content"></textarea>
					</div>
				</div>
				<div>
					<div>상영일</div>
					<div>
						<input name="showdate">
					</div>
				</div>
				<div>
					<div>영화상영구분</div>
					<div>
						<input name="type">
					</div>
				</div>
				<div>
					<div>장르</div>
					<div>
						<input name="genres">
					</div>
				</div>
				<div>
					<div>언어</div>
					<div>
						<input name="language">
					</div>
				</div>
				<div>
					<div>영상 링크 여부</div>
					<div>
						<input name="video">
					</div>
				</div>
			</div>
		</form>
		<br>
		<div>
			<input type="button" id="enroll_button" value="추가">
			<button type="button" onclick="location.href='/admin/movieList'">닫기</button>
		</div>
	</div>
	<script>
	/* 생성하기 버튼 클릭 메서드 */
	$("#enroll_button").click(function() {
		/* 입력한 변수 */
		var m_code = $("#m_code").val();
		var title = $("#title").val();
		var original_title = $("#original_title").val();
		var thumb = $("#thumb").val();
		var runtime = $("#runtime").val();
		var content = $("#content").val();
		var showdate = $("#showdate").val();
		var type = $("#type").val();
		var genres = $("#genres").val();
		var language = $("#language").val();
		var video = $("#video").val();
		/* 유효성 검사 */
		if (m_code == "") {
			alert("영화코드을 입력하세요.");
			return false;
		} else if (title == "") {
			alert("제목을 입력하세요.");
			return false;
		} else if (original_title == "") {
			alert("기존 제목을 입력하세요.");
			return false;
		} else if (runtime == "") {
			alert("러닝타임을 입력하세요.");
			return false;
		} else if (content == "") {
			alert("줄거리를 입력하세요.");
			return false;
		} else if (showdate == "") {
			alert("상영일를 입력하세요.");
			return false;
		} else if (type == "") {
			alert("장르를 입력하세요.");
			return false;
		} else if (genres == "") {
			alert("영화상영구분을 입력하세요.");
			return false;
		} else if (language == "") {
			alert("언어를 입력하세요.");
			return false;
		} else if (video == "") {
			alert("영상링크를 입력하세요.");
		} else {
			/* 영화정보 추가 동의여부 */
			if (confirm("영화정보를 추가하시겠습니까?")) {
				/* 영화정보 추가 메서드 서버 요청 */
				$("#movieInfo").attr("action", "/admin/movieEnroll");
				$("#movieInfo").submit();
			} else {
				document.location = '/admin/movieEnroll';
			}
			
			return true;
		}
	});
	</script>
</body>
</html>