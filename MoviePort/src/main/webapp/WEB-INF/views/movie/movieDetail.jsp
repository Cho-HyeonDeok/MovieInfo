<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<!-- 헤더 넣기 -->

	<!-- 영화 기본정보 -->
	<div id="movie_content_wrap">
		<div id="movie_content_subject"><span>영화 상세</span></div>
		<div id="movie_content_main">
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 썸네일</label>
				</div>
				<div class="form_section_content">
					<img src="../../resources/img/${movieInfo.title}.jpg">
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 제목</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.title}"></c:out>
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 장르</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.genres}"></c:out>
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 상영시간</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.runtime}"></c:out>
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 평점</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.totalrate}"></c:out>
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 좋아요</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.likes}"></c:out>
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 조회수</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.hits}"></c:out>
				</div>
			</div>
			
			<div class="form_section">
				<div class="form_section_title">
					<label>영화 줄거리</label>
				</div>
				<div class="form_section_content">
					<c:out value="${movieInfo.content}"></c:out>
				</div>
			</div>
		
		</div>
	</div>
	
	<form id="moveForm" method="get">
		<input type="hidden" name="m_code" value='<c:out value="${movieInfo.m_code}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
	</form>

	<!-- 찜 등록 및 취소 -->
	
	<!-- 평점 매기기 -->

	<!-- 리뷰 출력 및 작성 --> <!-- 유저 기본 정보  -->
	<form id="reviewInsert" method="post" action="/movie/insertReview">
		<div>
			<textarea rows="10" cols="50" name="comments"></textarea>
			<button type="submit">리뷰 작성</button>
		</div>
	</form>
	
	
	
	<!-- 풋터 넣기 -->
	

	<!-- <script>
		/* 리뷰쓰기 */
		$("#review_button_wrap").on("click", function(e) {

			e.preventDefault();
			
			const id = '${member.id}';
			const m_code = '${movieInfo.m_code}';

			let popUrl = "/reviewInsert/" + id + "?m_code=" + m_code;
			console.log(popUrl);
			let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
			
			window.open(popUrl,"리뷰 쓰기",popOption);

		});
	</script> -->
</body>
</html>