<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내가 작성한 리뷰 목록</h1>
	<hr>
	<div>
		<c:if test="${empty reviews}">
			<h3>등록하신 리뷰가 없습니다.</h3>
		</c:if>

		<c:if test="${!empty reviews}">
			<table border="1">
				<tr>
					<td>영화제목</td>
					<td>평점</td>
					<td>작성일</td>
					<td>리뷰 내용</td>
				</tr>
				<c:forEach items="${reviews}" var="reviews">
					<tr>
						<td><a href="/mypage/reviewsDetail?reviewid=${reviews.reviewid}"><c:out
									value="${reviews.title}"></c:out></a></td>
						<td><c:out value="${reviews.rate}"></c:out></td>
						<td><fmt:formatDate value="${reviews.writedate}"
								pattern="yyyy-MM-dd" /></td>
						<td><c:out value="${reviews.comments}"></c:out></td>
					</tr>

				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>