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
	<%@ include file="admin_header.jsp"%>
	<hr>

	<h1 style="color: #000; text-align: center; padding-top: 30px;">리뷰상세정보</h1>

	<div class="untree_co-section" id="contact-section">
		<div class="container">


			<div class="row justify-content-center text-center">
				<div class="col-4 col-sm-4 col-md-4 col-lg-6">

					<form id="reviewdetail" method="post">
						<div class="row justify-content-center text-center">

							<div class="col-12 form-group" style="padding-bottom: 15px;">
								<span>리뷰번호</span> <input type="text" class="form-control"
									name="reviewid" value="${detail.reviewid}" readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>아이디</span> <input type="text" class="form-control"
									name="id" value="${detail.id}" readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>영화코드</span> <input type="text" class="form-control"
									name="m_code" value="${detail.m_code}" id="m_code"
									readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>영화제목</span> <input type="text" class="form-control"
									value="${detail.title}" readonly="readonly">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>리뷰내용</span>
								<textarea class="form-control" readonly="readonly">${detail.comments}</textarea>
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<span>평점</span> <input type="text" class="form-control"
									value="${detail.rate}" readonly="readonly">
							</div>
						</div>

						<div class="row" style="padding-bottom: 15px;">
							<div id="email_box_css" class="col-12 form-group">
								<span>등록일</span> <input type="text" class="form-control"
									value="<fmt:formatDate value="${detail.writedate}" pattern="yyyy-MM-dd" />"
									readonly="readonly">
							</div>
						</div>
						<!-- ROW종료 -->
					</form>
				</div>
			</div>
		</div>
	</div>

	<div class="justify-content-center text-center">
		<input type="button" id="delete_button" class="btn btn-black"
			value="삭제">
		<button type="button" class="btn btn-white"
			onclick="location.href='/admin/reviewList'">닫기</button>
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