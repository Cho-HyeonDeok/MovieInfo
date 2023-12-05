<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/list.css">
</head>
<body>
	<%@ include file="admin_header.jsp"%>
	<hr>
	<h1 class="list_title">리뷰리스트</h1>

	<table class="admin_list">
		<thead class="list_thead">
			<tr>
				<th class="list_col">리뷰번호</th>
				<th class="list_col">회원아이디</th>
				<th class="list_col">영화코드</th>
				<th class="list_col">영화제목</th>
				<th class="list_col">리뷰내용</th>
				<th class="list_col">평점</th>
				<th class="list_col">작성일</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${reviewList}" var="reviewList">
				<tr>
					<td class="info_col"><a class="a_tag"
						href="/admin/reviewDetail?reviewid=${reviewList.reviewid}"><c:out
								value="${reviewList.reviewid}"></c:out></a></td>
					<td class="info_col"><c:out value="${reviewList.id}"></c:out></td>
					<td class="info_col"><c:out value="${reviewList.m_code}"></c:out></td>
					<td class="info_col"><c:out value="${reviewList.title}"></c:out></td>
					<td class="info_col"><c:out value="${reviewList.comments}"></c:out></td>
					<td class="info_col"><c:out value="${reviewList.rate}"></c:out></td>
					<td class="info_col"><fmt:formatDate
							value="${reviewList.writedate}" pattern="yyyy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>