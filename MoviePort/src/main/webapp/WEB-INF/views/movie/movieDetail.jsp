<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<!-- 영화 기본정보 -->


	<!-- 평점 매기기 -->

	<!-- 리뷰 출력 및 작성 -->

	<!-- 유저 기본 정보  -->

	<!-- 찜 등록 및 취소 -->



	<div id="review_button_wrap">
		<button>리뷰 쓰기</button>
	</div>

	<script>
		/* 리뷰쓰기 */
		$("#review_button_wrap").on("click", function(e) {

			e.preventDefault();
			
			const id = '${member.id}';
			const m_code = '${list.m_code}';

			let popUrl = "/reviewInsert/" + id + "?m_code=" + m_code;
			console.log(popUrl);
			let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
			
			window.open(popUrl,"리뷰 쓰기",popOption);

		});
	</script>
</body>
</html>