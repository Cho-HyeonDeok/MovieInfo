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

	<!-- 좋아요 등록 및 취소 -->
	<div id = "button">
		<div class="button_likes">
			<span>
				<button class="button_likes_insert"> 좋아요 추가 </button>
				<button class="button_likes_delete"> 좋아요 삭제 </button>
			</span>
		</div>
	</div>
	
	
	<!-- 평점 매기기 -->

	<!-- 리뷰 출력 및 작성 --> <!-- 유저 기본 정보  -->
	<div id="review_button_wrap">
		<button>리뷰 쓰기</button>
	</div>
	
	
	
	<!-- 풋터 넣기 -->

	<script>
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
		
		// 서버로 전송할 좋아요 데이터
		const form = {
				id : '${member.id}',
				m_code : '${movieInfo.m_code}',
				thumb : '${movieInfo.thumb}',
				title : '${movieInfo.title}'
		}
		
		/* 좋아요 추가 */
		$(".button_likes_insert").on("click", function(e) {
			//console.log(${member.id});
			//console.log(${movieInfo.m_code});
			$.ajax({
				url: '/likes/insert',
				type: 'POST',
				data: form,
				success: function(result) {
					cartAlert(result);
				}
			})
		});		
	
		/* 좋아요 삭제 */
		$(".button_likes_delete").on("click", function(e) {
			$.ajax({
				url: '/likes/delete',
				type: 'POST',
				data: form,
				success: function(result) {
					
				}
			})
		});	
		
		function cartAlert(result) {
			if(result == '0') {
				alert("좋아요를 추가하지 못하였습니다.");
			} else if(result == '1') {
				alert("좋아요에 추가되었습니다.");
			} else if(result == '2') {
				alert("좋아요가 이미 추가되어 있습니다.");
			} else if(result == '5') {
				alert("로그인이 필요합니다.");
			}
		}
		
	</script>
</body>
</html>