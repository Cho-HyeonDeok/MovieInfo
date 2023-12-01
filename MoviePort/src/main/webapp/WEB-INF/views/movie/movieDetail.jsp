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
<style type="text/css">
/* 팝업창 제목 */
.subject_div {
	width: 100%;
	background-color: #7b8ed1;
	color: white;
	padding: 10px;
	font-weight: bold;
}

/* 컨텐츠, 버튼 영역 padding */
#input_wrap {
	padding: 30px;
}

#btn_wrap {
	padding: 5px 30px 30px 30px;
	text-align: center;
}

/* 버튼 영역 */
#insert_button {
	display: inline-block;
	width: 130px;
	background-color: #7b8ed1;
	height: 50px;
	color: #fff;
	font-size: 14px;
	line-height: 18px;
}

/* 책제목 영역 */
#movieTitle_div h2 {
	margin: 0;
}
/* 평점 영역 */
#rate_div {
	padding-top: 10px;
}

#rate_div h4 {
	margin: 0;
}

select {
	margin: 15px;
	width: 100px;
	height: 40px;
	text-align: center;
	font-size: 16px;
	font-weight: 600;
}
/* 리뷰 작성 영역 */
#comments_div {
	padding-top: 10px;
}

#comments_div h4 {
	margin: 0;
}

textarea {
	width: 100%;
	height: 100px;
	border: 1px solid #dadada;
	padding: 12px 8px 12px 8px;
	font-size: 15px;
	color: #a9a9a9;
	resize: none;
	margin-top: 10px;
}
</style>
</head>
<body>

	<!-- 헤더 넣기 -->

	<!-- 영화 기본정보 -->
	<div id="movie_content_wrap">
		<div id="movie_content_subject">
			<span>영화 상세</span>
		</div>
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
		<input type="hidden" name="m_code"
			value='<c:out value="${movieInfo.m_code}"/>'> <input
			type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount"
			value='<c:out value="${cri.amount}"/>'> <input type="hidden"
			name="keyword" value='<c:out value="${cri.keyword}"/>'>
	</form>

	<!-- 찜 등록 및 취소 -->

	<!-- 평점 매기기 -->

	<!-- 리뷰 출력 및 작성 -->
	<!-- 유저 기본 정보  -->
	<div>
		<c:if test="${member == null}">
			<div>
				<span style="color: red">리뷰 작성은 로그인 후 이용 가능한 서비스입니다.</span>
				<button type="button" onclick="location.href='/member/login'">로그인</button>
			</div>
		</c:if>
		<c:if test="${member != null}">
			<form id="insert_review" method="post">
				<div id="input_wrap">
					<div id="movieTitle_div">
						<h2>${movieInfo.title}리뷰 작성</h2>
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
						<textarea id="comments" name="comments"></textarea>
					</div>
				</div>

				<input type="hidden" name="id" value='<c:out value="${member.id}"/>'>
				<input type="hidden" name="m_code"
					value='<c:out value="${movieInfo.m_code}"/>'> <input
					type="hidden" name="title"
					value='<c:out value="${movieInfo.title}"/>'>
				<div id="input_wrap">
					<input type="button" id="insert_button" value="리뷰 등록">
				</div>
			</form>
		</c:if>
	</div>

	<div>
		<h2>리뷰</h2>
		<hr>

		<c:if test="${empty reviewList}">
			<h3>등록된 리뷰가 없습니다.</h3>
		</c:if>
		<div>
			<table>
				<c:forEach items="${reviewList}" var="reviewList">
					<tr>
						<td><c:out value="${reviewList.id}"></c:out></td>
						<td>평점 : <c:out value="${reviewList.rate}"></c:out></td>
						<td>작성일 : <fmt:formatDate value="${reviewList.writedate}"
								pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${reviewList.comments}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<!-- 풋터 넣기 -->

	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		// 리뷰 등록 버튼 클릭 시      
		$('#insert_button').click(function() {
			/* 입력한 변수 */
			var comments = $("#comments").val();

			/* 유효성 검사 */
			if (comments == "") {
				alert("내용을 입력하세요.");
				return false;
			} else {
				$("#insert_review").attr("action", "/movie/insertReview");
				$("#insert_review").submit();
				return true;
			}
		});
	</script>
</body>
</html>