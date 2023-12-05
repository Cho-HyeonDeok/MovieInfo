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
	<h1 class="list_title">회원리스트</h1>

	<table class="admin_list">
		<thead class="list_thead">
			<tr>
				<th class="list_col">아이디</th>
				<th class="list_col">이름</th>
				<th class="list_col">닉네임</th>
				<th class="list_col">휴대폰번호</th>
				<th class="list_col">이메일</th>
				<th class="list_col">가입일</th>
				<th class="list_col">차단유무</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${memberList}" var="memberList">
				<c:if test="${memberList.admin == '0'}">
					<tr>
						<td class="info_col"><a class="a_tag"
							href="/admin/memberDetail?id=${memberList.id}"><c:out
									value="${memberList.id}"></c:out></a></td>
						<td class="info_col"><c:out value="${memberList.name}"></c:out></td>
						<td class="info_col"><c:out value="${memberList.nickname}"></c:out></td>
						<td class="info_col"><c:out value="${memberList.phone}"></c:out></td>
						<td class="info_col"><c:out value="${memberList.email}"></c:out></td>
						<td class="info_col"><fmt:formatDate
								value="${memberList.indate}" pattern="yyyy-MM-dd" /></td>
						<c:choose>
							<c:when test="${memberList.block == '1'}">
								<td class="info_col">block</td>
							</c:when>
							<c:otherwise>
								<td class="info_col">clean</td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>