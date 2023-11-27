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
	<h1>회원리스트</h1>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>닉네임</td>
			<td>휴대폰번호</td>
			<td>이메일</td>
			<td>가입일</td>
			<td>차단유무</td>
		</tr>

		<c:forEach items="${memberList}" var="memberList">
			<c:if test="${memberList.admin == '0'}">
				<tr>
					<td><a href="/admin/memberDetail?id=${memberList.id}"><c:out value="${memberList.id}"></c:out></a></td>
					<td><c:out value="${memberList.name}"></c:out></td>
					<td><c:out value="${memberList.nickname}"></c:out></td>
					<td><c:out value="${memberList.phone}"></c:out></td>
					<td><c:out value="${memberList.email}"></c:out></td>
					<td><fmt:formatDate value="${memberList.indate}"
							pattern="yyyy-MM-dd" /></td>
					<c:choose>
						<c:when test="${memberList.block == '1'}">
							<td>block</td>
						</c:when>
						<c:otherwise>
							<td>clean</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>