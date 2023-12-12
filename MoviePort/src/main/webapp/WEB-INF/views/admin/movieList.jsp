<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화리스트</title>
<link rel="stylesheet" href="../resources/css/admin/list.css">
</head>
<body>
	<%@ include file="admin_header.jsp"%>
	<hr>

	<h1 class="list_title">영화리스트</h1>
	<a href="/admin/movieEnroll">영화추가</a>

	<table class="admin_list">
		<thead class="list_thead">
			<tr>
				<th class="list_col">썸네일</th>
				<th class="list_col">제목</th>
				<th class="list_col">스토리</th>
				<th class="list_col">러닝타임</th>
				<th class="list_col">상영여부</th>
				<th class="list_col">개봉날짜</th>
				<th class="list_col">장르</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${movieList }" var="movieList">
				<tr>
					<td class="info_col"><a href="/admin/movieDetail?m_code=${movieList.m_code}"><img
							src="../resources/img/${movieList.title}.jpg"
							width="100px" height="100px"></a></td>
					<td class="info_col"><c:out value="${movieList.title}"></c:out></td>
					<td class="info_col"><c:out value="${movieList.content}"></c:out></td>
					<td class="info_col"><c:out value="${movieList.runtime}"></c:out></td>
					<td class="info_col"><c:out value="${movieList.type}"></c:out></td>
					<td class="info_col"><c:out value="${movieList.showdate}"></c:out></td>
					<td class="info_col"><c:out value="${movieList.genres}"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>