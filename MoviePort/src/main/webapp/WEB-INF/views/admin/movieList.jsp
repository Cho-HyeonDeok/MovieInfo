<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화리스트</title>
</head>
<body>
	<h1>영화리스트</h1>
	<a href="/admin/movieEnroll">영화추가</a>
	<table border="1">
		<tr>
			<td>썸네일</td>
			<td>제목</td>
			<td>스토리</td>
			<td>러닝타임</td>
			<td>상영여부</td>
			<td>개봉날짜</td>
			<td>장르</td>
		</tr>
		
		<c:forEach items="${movieList }" var="movieList">
			<c:if test="${movieList.type == '상영종료'}">
				<tr>
					<td><a href="/admin/movieDetail?m_code=${movieList.m_code}"><img src="../../../resources/img/${movieList.title}.jpg" width="100px" height="100px"></a></td>
					<td><c:out value="${movieList.title}"></c:out></td>
					<td><c:out value="${movieList.content}"></c:out></td>
					<td><c:out value="${movieList.runtime}"></c:out></td>
					<td><c:out value="${movieList.type}"></c:out></td>
					<td><c:out value="${movieList.showdate}"></c:out></td>
					<td><c:out value="${movieList.genres}"></c:out></td>
				
					<c:choose>
						<c:when test="${movieList.type == '예정작'}">
							<td>예정작</td>
						</c:when>
						<c:when test="${movieList.type == '상영중'}">
							<td>상영중</td>
						</c:when>
						<c:otherwise>
							<td>상영종료</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:if>	
		</c:forEach>
	</table>
</body>
</html>