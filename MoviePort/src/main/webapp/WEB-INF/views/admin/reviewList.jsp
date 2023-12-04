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
	<h1>리뷰리스트</h1>
	<table border="1">
		<tr>
			<td>리뷰번호</td>
			<td>회원아이디</td>
			<td>영화코드</td>
			<td>영화제목</td>
			<td>리뷰내용</td>
			<td>평점</td>
			<td>작성일</td>
		</tr>

		<c:forEach items="${reviewList}" var="reviewList">
			<tr>
				<td><a
					href="/admin/reviewDetail?reviewid=${reviewList.reviewid}"><c:out
							value="${reviewList.reviewid}"></c:out></a></td>
				<td><c:out value="${reviewList.id}"></c:out></td>
				<td><c:out value="${reviewList.m_code}"></c:out></td>
				<td><c:out value="${reviewList.title}"></c:out></td>
				<td><c:out value="${reviewList.comments}"></c:out></td>
				<td><c:out value="${reviewList.rate}"></c:out></td>
				<td><fmt:formatDate value="${reviewList.writedate}"
						pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>