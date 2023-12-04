<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form id="movieEnroll_form" method="post">
			<div>
				<div>
					<span>영화추가</span>
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
						<input name="content">
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
		
	</script>
</body>
</html>