<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="../resources/assets/movieIcon.png">
<!--아이콘 출처 
  <a href="https://www.flaticon.com/kr/free-icons/" title="영화 아이콘">영화 아이콘  제작자: Good Ware - Flaticon</a> -->

<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=PT+Mono&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="../resources/assets/css/owl.theme.default.min.css">
<link rel="stylesheet"
	href="../resources/assets/css/jquery.fancybox.min.css">
<link rel="stylesheet"
	href="../resources/assets/fonts/icomoon/style.css">
<link rel="stylesheet"
	href="../resources/assets/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="../resources/assets/css/aos.css">
<link rel="stylesheet" href="../resources/assets/css/style.css">
<link rel="stylesheet" href="../resources/css/member/join.css">
<link rel="stylesheet" href="../resources/css/movie.css">


<title>MoviePort</title>

<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="100">

	<div class="lines-wrap">
		<div class="lines-inner">
			<div class="lines"></div>
		</div>
	</div>
	<!-- END lines -->

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav dark mb-5 site-navbar-target">
		<div class="container">
			<div class="site-navigation">
				<a href="/main" class="logo m-0">MoviePort<span
					class="text-primary">.</span></a>

				<div class="site-navigation-login">
					<!-- 로그인 안했을때 -->
					<c:if test="${member == null }">
						<span><a href="/member/login">로그인&nbsp</a>/ <a
							href="/member/join">회원가입</a></span>
					</c:if>

					<!-- 로그인 했을때 -->
					<c:if test="${member != null }">
						<c:choose>
							<c:when test="${member.admin == '1'}">
								<span><a href="/admin/adminMain">${member.nickname}(#${member.id})님&nbsp</a></span>/
							</c:when>
							<c:otherwise>
								<span><a href="/mypage/mypageMain">${member.nickname}(#${member.id})님&nbsp</a></span>/
							</c:otherwise>
						</c:choose>
						<span><a href="/member/logout.do">로그아웃</a></span>
					</c:if>
				</div>

				<ul
					class="js-clone-nav d-none d-lg-inline-none site-menu float-right site-nav-wrap">

					<li><a href="#home-section" class="nav-link active">메인으로</a></li>
					<!-- 로그인 안했을때 -->
					<c:if test="${member == null }">
						<li><a href="/member/login">로그인</a></li>
						<li><a href="/member/join">회원가입</a></li>
					</c:if>
					<!-- <li><a href="#portfolio-section" class="nav-link">MyPage</a></li>  -->
					<!-- 로그인 했을때 -->
					<c:if test="${member != null }">
						<li><a href="/member/logout.do">로그아웃</a></li>
						<li class="has-children"><a class="nav-link">마이페이지</a>
							<ul class="dropdown">
								<li><a href="/mypage/mypageMain" class="nav-link">내 정보</a></li>
								<li><a href="/mypage/pwdUpdate" class="nav-link">비밀번호
										변경</a></li>
								<li><a href="/mypage/reviews" class="nav-link">나의 리뷰 목록</a></li>
								<li><a href="/mypage/likes" class="nav-link">좋아요 표시한 목록</a></li>
								<li><a href="/mypage/resign" class="nav-link">회원탈퇴</a></li>
							</ul></li>
					</c:if>
				</ul>

				<a href="#"
					class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-inline-block"
					data-toggle="collapse" data-target="#main-navbar"> <span></span>
				</a>
			</div>
		</div>
	</nav>

	<div class="untree_co-section pb-0" id="home-section">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-md-7">
					<h1 class="heading gsap-reveal-hero mb-3"
						style="margin-bottom: 30px;">
						<strong>MoviePort<span class="text-primary">.</span></strong>
					</h1>
					<!-- <h2 class="subheading gsap-reveal-hero mb-4">
						All of Reviews in here</strong>.
					</h2> -->
				</div>

				<div id="h_H" class="col-md-10 col-lg-12">
					<div class="h_L">
						<form id="genreForm" action="/movie/movieCategory" method="get">
							<ul class="h_menu">
								<li><a class="genre_move" href="액션" id="bidulgi">액션</a></li>
								<li><a class="genre_move" href="로맨스" id="bidulgi">로맨스</a></li>
								<li><a class="genre_move" href="코미디" id="bidulgi">코미디</a></li>
								<li><a class="genre_move" href="스릴러" id="bidulgi">스릴러</a></li>
								<li><a class="genre_move" href="공포" id="bidulgi">호러</a></li>
								<li><a class="genre_move" href="SF" id="bidulgi">SF</a></li>
								<li><a class="genre_move" href="애니메이션" id="bidulgi">애니</a></li>
								<li class="bar"></li>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 헤더 끝 -->

	<div class="untree_co-section untree_co-section-4 pb-0"
		id="portfolio-section">
		<div class="container">
			<div id="input_wrap">
				<form id="reviewInfo" method="post">
					<div id="movieTitle_div">
						<h2 style="color: #000;">${detail.title}</h2>
					</div>
					<div class="wrap">
						<div class="rating">
							<label class="rating__label rating__label--half" for="starhalf">
								<input type="radio" id="starhalf" class="rating__input"
								name="rate" value="1"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--full" for="star1">
								<input type="radio" id="star1" class="rating__input" name="rate"
								value="2"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--half" for="star1half">
								<input type="radio" id="star1half" class="rating__input"
								name="rate" value="3"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--full" for="star2">
								<input type="radio" id="star2" class="rating__input" name="rate"
								value="4"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--half" for="star2half">
								<input type="radio" id="star2half" class="rating__input"
								name="rate" value="5"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--full" for="star3">
								<input type="radio" id="star3" class="rating__input" name="rate"
								value="6"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--half" for="star3half">
								<input type="radio" id="star3half" class="rating__input"
								name="rate" value="7"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--full" for="star4">
								<input type="radio" id="star4" class="rating__input" name="rate"
								value="8"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--half" for="star4half">
								<input type="radio" id="star4half" class="rating__input"
								name="rate" value="9"> <span class="star-icon"></span>
							</label> <label class="rating__label rating__label--full" for="star5">
								<input type="radio" id="star5" class="rating__input" name="rate"
								value="10"> <span class="star-icon"></span>
							</label>
						</div>
					</div>

					<div id="comments_div" class="comments_text">
						<textarea id="comments" class="comments_text_1" name="comments"
							style="width: 350px;">${detail.comments}</textarea>
					</div>

					<input type="hidden" name="reviewid" value="${detail.reviewid}">
				</form>
			</div>

			<div id="input_wrap" style="margin-bottom: 200px;">
				<input type="button" class="btn btn-black" id="update_button"
					value="수정"> <input type="button" class="btn btn-black"
					id="delete_button" value="삭제">
				<button type="button" class="btn btn-white"
					onclick="location.href='/mypage/reviews'">닫기</button>
			</div>
		</div>
	</div>

	<%@ include file="../../views/footer.jsp"%>
	<script src="../resources/assets/js/movie_star.js"></script>

	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		/* 수정 버튼 클릭 메서드 */
		$("#update_button").click(function() {
			/* 입력한 변수 */
			var comments = $("#comments").val();

			/* 유효성 검사 */
			if (comments == "") {
				alert("내용을 입력하세요.");
				return false;
			} else {
				/* 리뷰 수정 메서드 서버 요청 */
				$("#reviewInfo").attr("action", "/mypage/updateReview");
				$("#reviewInfo").submit();
				return true;
			}
		});

		/* 삭제 버튼 클릭 메서드 */
		$("#delete_button").click(function() {
			/* 리뷰 삭제 메서드 서버 요청 */
			$("#reviewInfo").attr("action", "/mypage/deleteReview");
			$("#reviewInfo").submit();
		});
	</script>
	
	<script>
		let genreMoveForm = $('#genreForm');
		/* 영화 장르 목록 이동 */
		$(".genre_move").on(
				"click",
				function(e) {

					e.preventDefault();

					genreMoveForm
							.append("<input type='hidden' name='genre' value='"
									+ $(this).attr("href") + "'>");
					genreMoveForm.submit();
					genreMoveForm.find("input[name='genre']").remove();
				});
	</script>
</body>
</html>