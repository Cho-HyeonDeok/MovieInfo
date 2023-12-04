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
	<h1>좋아요 페이지</h1>
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

	<div class="content_area">

		<div class="content_subject">
			<span>좋아요 표시한 영화</span>
		</div>
		<!-- 좋아요 리스트 -->
		<!-- likesInfo -->
		<div class="content_total_section">

			<table class="subject_table">
				<caption>표 제목 부분</caption>
				<tbody>
					<tr>
						<th class="td_width_1">이미지</th>
						<th class="td_width_2">제목</th>
						<th class="td_width_3">삭제</th>
					</tr>
				</tbody>
			</table>
			<table class="likes_table">
				<caption>표 내용 부분</caption>
				<tbody>
					<c:forEach items="${likesInfo}" var="likesInfo">
						<tr>
							<td><a class="move"
								href='<c:out value="${likesInfo.m_code}"/>'> <img
									src="../../../resources/img/${likesInfo.title}.jpg">
							</a></td>
							<td><c:out value="${likesInfo.title}"></c:out></td>
							<td><button class="delete_btn"
									data-likesid="${likesInfo.l_num}">삭제</button></td>
						</tr>


					</c:forEach>
				</tbody>
			</table>
		</div>

		<!-- 삭제 form -->
		<form action="/likes/delete" method="post" class="likes_delete_form">
			<input type="hidden" name="l_num" class="likes_delete_l_num">
			<input type="hidden" name="id" value="${member.id}">
		</form>

	</div>

	<script>
		/* 영화 상세 페이지 이동 */
		$(".move")
				.on(
						"click",
						function(e) {

							e.preventDefault();

							moveForm
									.append("<input type='hidden' name='m_code' value='"
											+ $(this).attr("href") + "'>");
							moveForm.attr("action", "/movie/movieDetail");
							moveForm.submit();
							moveForm.find("input[name='m_code']").remove();
						});

		/* 좋아요 삭제 버튼 */
		$(".delete_btn").on("click", function(e) {

			e.preventDefault();

			const id = $(this).data("likesid");
			$(".likes_delete_l_num").val(id);
			$(".likes_delete_form").submit();

		});
	</script>

</body>
</html>