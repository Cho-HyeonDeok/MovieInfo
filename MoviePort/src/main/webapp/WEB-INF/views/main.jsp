<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<h1>메인페이지</h1>
	<ul>
		<c:if test="${member == null }">
			<!-- 로그인 안했을때 -->
			<li><a href="/member/login">로그인</a></li>
			<li><a href="/member/join">회원가입</a></li>
		</c:if>
	</ul>
	<c:if test="${member != null }">
		<!-- 로그인 했을때 -->
		<c:if test="${member.admin == '1'}">
			<a href="/admin/adminMain">관리자 페이지</a>
		</c:if>
		<div class="login_success_area">
			<span>${member.nickname}(#${member.id})님</span> <a
				href="/member/logout.do">로그아웃</a> <a href="/mypage/mypageMain">마이페이지</a>
		</div>
	</c:if>

	<!-- 영화 검색 기능 -->
	<div class="search_wrap">
		<form id="searchForm" action="/main" method="get">
			<div class="search_input">
				<input type="text" name="keyword"
					value='<c:out value="${pageMaker.cri.keyword}"></c:out>'> <input
					type="hidden" name="pageNum"
					value='<c:out value="${pageMaker.cri.pageNum}"></c:out>'> <input
					type="hidden" name="amount" value='${pageMaker.cri.amount}'>
				<button class='btn search_btn'>검 색</button>
			</div>
		</form>
	</div>
	<div>
		<select id="sortOption" name="sortOption">
			<option>선택하세요</option>
			<option value="totalrate">평점</option>
			<option value="showdate" >최신순</option>
		</select>
	</div>

	<!-- 영화 데이터 출력 -->
	<div id="movie_content_wrap">
		<div id="movie_table_wrap">

			<!-- 게시물 O -->
			<c:if test="${listCheck != 'empty' }">
				<table id="movie_table">
					<thead>
						<tr>
							<td id="movie_table_col1">썸네일</td>
							<td id="movie_table_col2">제목</td>
							<td id="movie_table_col3">장르</td>
							<td id="movie_table_col4">줄거리</td>
							<td id="movie_table_col5">상영시간</td>
							<td id="movie_table_col6">평점</td>
							<td id="movie_table_col7">좋아요</td>
							<td id="movie_table_col8">조회수</td>
						</tr>
					</thead>
					<c:forEach items="${list}" var="list">
            <input type="hidden" name="m_code" value="${m_code}">
						<tr>
							<td><a class="move" href='<c:out value="${list.m_code}"/>'>
								<img src="../../resources/img/${list.title}.jpg">
							</a></td>
							<td><c:out value="${list.title}"></c:out></td>
							<td><c:out value="${list.genres}"></c:out></td>
							<td><c:out value="${list.content}"></c:out></td>
							<td><c:out value="${list.runtime}"></c:out></td>
							<td><c:out value="${list.totalrate}"></c:out></td>
							<td><c:out value="${list.likes}"></c:out></td>
							<td><c:out value="${list.hits}"></c:out></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			
			<!--  게시물 x -->
			<c:if test="${listCheck == 'empty' }">
				<div class="table_empty">
					등록된 영화가 없습니다.
				</div>
			</c:if>
		</div>

		<!-- 페이지 이동 인터페이스 영역 -->
		<div id="pageMaker_wrap">
			<ul id="pageMaker">
				<!-- 이전 버튼 -->
				<c:if test="${pageMaker.prev}">
					<li class="pageMaker_btn prev"><a
						href="${pageMaker.pageStart - 1}">이전</a></li>
				</c:if>

				<!-- 페이지 번호 -->
				<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}"
					var="num">
					<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
						<a href="${num}">${num}</a>
					</li>
				</c:forEach>

				<!-- 다음 버튼 -->
				<c:if test="${pageMaker.next}">
					<li class="pageMaker_btn next"><a
						href="${pageMaker.pageEnd + 1}">다음</a></li>
				</c:if>
			</ul>
		</div>

		<form id="moveForm" action="/main" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
		</form>

	</div>




	<!-- 영화 정렬기능 -->
	

	<script>
		/* 페이지 이동 버튼 */
		let moveForm = $('#moveForm');
		$(".pageMaker_btn a").on("click", function(e) {

			e.preventDefault();

			moveForm.find("input[name='pageNum']").val($(this).attr("href"));

			moveForm.submit();
		});

		/* 작가 검색 버튼 동작 */
		let searchForm = $('#searchForm');
		$("#searchForm button").on("click", function(e) {

			e.preventDefault();

			/* 검색 키워드 유효성 검사 */
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하십시오");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");

			searchForm.submit();
		});
		

		/* 정렬 옵션 변경 이벤트 */
	    $("#sortOption").on("change", function () {
	        // 선택된 옵션 값을 가져옴
	        let selectedOption = $(this).val();
	
	       	// 정렬 처리
	        if (selectedOption === "totalrate") {
	            // 평점순으로 정렬
	            searchForm.append('<input type="hidden" name="sortOption" value="totalrate">');
	        }  else if (selectedOption === "showdate") {
	            // 최신순으로 정렬
	            searchForm.append('<input type="hidden" name="sortOption" value="showdate">');
	        } else {
	            // 다른 옵션을 선택하거나 기본 옵션을 선택한 경우 hidden input 제거
	            searchForm.find("input[name='sortOption']").remove();
	        }
	
	        // 정렬을 적용하기 위해 폼 제출
	        searchForm.submit();
	    });
		
		

		/* 작가 상세 페이지 이동 */
		$(".move").on("click", function(e) {
			
			e.preventDefault();
			
			moveForm.append("<input type='hidden' name='m_code' value='"+ $(this).attr("href") + "'>");
			moveForm.attr("action", "/movie/movieDetail");
			moveForm.submit();
		});
	</script>

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
</body>
</html>

