<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	padding: 1.5em;
	background: #f5f5f5
}

table {
	border: 1px #a39485 solid;
	font-size: .9em;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	width: 100%;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
}

th {
	text-align: left;
}

thead {
	font-weight: bold;
	color: #fff;
	background: #73685d;
}

td, th {
	padding: 1em .5em;
	vertical-align: middle;
}

td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
	background: #fff;
}

a {
	color: #73685d;
}

@media all and (max-width: 768px) {
	table, thead, tbody, th, td, tr {
		display: block;
	}
	th {
		text-align: right;
	}
	table {
		position: relative;
		padding-bottom: 0;
		border: none;
		box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	}
	thead {
		float: left;
		white-space: nowrap;
	}
	tbody {
		overflow-x: auto;
		overflow-y: hidden;
		position: relative;
		white-space: nowrap;
	}
	tr {
		display: inline-block;
		vertical-align: top;
	}
	th {
		border-bottom: 1px solid #a39485;
	}
	td {
		border-bottom: 1px solid #e5e5e5;
	}
}
</style>
</head>
<body>
	<h1>회원리스트</h1>
	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>닉네임</th>
				<th>휴대폰번호</th>
				<th>이메일</th>
				<th>가입일</th>
				<th>차단유무</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${memberList}" var="memberList">
				<c:if test="${memberList.admin == '0'}">
					<tr>
						<td><a href="/admin/memberDetail?id=${memberList.id}"><c:out
									value="${memberList.id}"></c:out></a></td>
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
		</tbody>
	</table>
</body>
</html>