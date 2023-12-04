<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세 페이지</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<h1>영화상세정보</h1>
	<br>
	<form id="movieInfo" method="post">
		<div><input type="hidden" name="m_code" value="${info.m_code }" id="m_code" readonly="readonly"></div>
		<div>
			<label>썸네일</label>
		</div>
		<div>
			<img src="../../../resources/img/${info.title}.jpg" width="100px" height="100px"><br>
			<input type="file" name="thumb" id="thumb" accept="image/*">
		</div>
		<div>
			<label>영화제목</label>
		</div>
		<div><input type="text" name="title" value="${info.title }" id="title"></div>
		<div>
			<label>기존제목</label>
		</div>
		<div><input type="text" name="original_title" value="${info.original_title }" id="original_title"></div>
		<div>
			<label>언어</label>
		</div>
		<div><input type="text" name="language" value="${info.language }" id="language"></div>
		<div>
			<label>장르</label>
		</div>
		<div><input type="text" name="genres" value="${info.genres }" id="genres"></div>
		<div>
			<label>영상링크</label>
		</div>
		<div><input type="text" name="video" value="${info.video }" id="video"></div>
		<div>
			<label>상영일</label>
		</div>
		<div><input type="text" name="showdate" value="${info.showdate }" id="showdate"></div>
		<div>
			<label>영화상영구분(예정작, 상영중, 상영종료)</label>
		</div>
		<div><input type="text" value="${info.type }" name="type"  placeholder="예정작, 상영중, 상영종료 입력" id="type"></div>
		<div>
			<label>줄거리</label>
		</div>
		<div><textarea rows="10" cols="70" name="content" id="content">${info.content }</textarea></div>
	</form>
	
	<div>
		<input type="button" id="update_button" value="수정">
		<input type="button" id="delete_button" value="삭제">
		<button type="button" onclick="location.href='/admin/movieList'">닫기</button>
	</div>
	
	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 수정하기 버튼 클릭 메서드 */
		$("#update_button").click(function() {
			/* 입력한 변수 */
			var thumb = $("#thumb").val();
			var title = $("#title").val();
			var original_title = $("#original_title").val();
			var language = $("#language").val();
			var genres = $("#genres").val();
			var video = $("#video").val();
			var showdate = $("#showdate").val();
			var type = $("#type").val();
			var content = $("#content").val();
			/* 유효성 검사 */
			if (title == "") {
				alert("제목을 입력하세요.");
				return false;
			} else if (original_title == "") {
				alert("기존 제목을 입력하세요.");
				return false;
			} else if (language == "") {
				alert("언어를 입력하세요.");
				return false;
			} else if (genres == "") {
				alert("장르를 입력하세요.");
				return false;
			} else if (video == "") {
				alert("영상링크를 입력하세요.");
				return false;
			} else if (showdate == "") {
				alert("상영일를 입력하세요.");
				return false;
			} else if (type == "") {
				alert("영화상영구분을 입력하세요.");
				return false;
			} else if (content == "") {
				alert("줄거리를 입력하세요.");
				return false;
			} else {
				/* 영화정보 수정 동의여부 */
				if (confirm("영화정보를 수정하시겠습니까?")) {
					/* 영화정보 수정 메서드 서버 요청 */
					$("#movieInfo").attr("action", "/admin/movieUpdate.do");
					$("#movieInfo").submit();
				} else {
					document.location = '/admin/movieDetail?m_code=${info.m_code}';
				}
				return true;
			}
		});
		
		
		/* 삭제 버튼 */
		$("#deleteBtn").on("click", function(e){
			e.preventDefault();
			let moveForm = $("#moveForm");
			moveForm.find("input").remove();
			moveForm.append('<input type="hidden" name="m_code" value="${info.m_code}">');
			moveForm.attr("action", "/admin/movieDelete");
			moveForm.attr("method", "post");
			moveForm.submit();
		});
	</script>
</body>
</html>