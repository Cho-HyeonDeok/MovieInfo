<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/main.css">
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
			<span>${member.nickname}(#${member.id})님</span> <a href="/member/logout.do">로그아웃</a>
			<a href="/mypage/mypageMain">마이페이지</a>
		</div>
	</c:if>

	<!-- 영화 데이터 출력 -->
	<div id="movie_table_wrap">
		<table id="movie_table">
			<thead>
				<tr>
					<td id="movie_table_col1"> 썸네일 </td>
					<td id="movie_table_col2"> 제목 </td>
					<td id="movie_table_col3"> 장르 </td>
					<td id="movie_table_col4"> 줄거리 </td>
					<td id="movie_table_col5"> 상영시간 </td>
					<td id="movie_table_col6"> 평점 </td>
					<td id="movie_table_col7"> 좋아요 </td>
					<td id="movie_table_col8"> 조회수 </td>
				</tr>
			</thead>
			<c:forEach items="${list}" var="list">
				<tr>
					<td> <img src="../../resources/img/${list.title}.jpg"> </td>
					<td> <c:out value="${list.title}"></c:out> </td>
					<td> <c:out value="${list.genres}"></c:out> </td>
					<td> <c:out value="${list.content}"></c:out> </td>
					<td> <c:out value="${list.runtime}"></c:out> </td>
					<td> <c:out value="${list.totalrate}"></c:out> </td>
					<td> <c:out value="${list.likes}"></c:out> </td>
					<td> <c:out value="${list.hits}"></c:out> </td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	
	<!-- 영화 검색 기능 -->
	
	<!-- 영화 정렬기능 -->

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
</body>
</html>

