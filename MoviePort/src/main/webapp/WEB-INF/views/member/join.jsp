<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- /*
* Template Name: Minimal
* Template Author: Untree.co
* Author URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
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

<title>MoviePort</title>

<link rel="stylesheet" href="/resources/css/member/join.css">
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

	<div class="untree_co-section" id="contact-section">
		<div class="container">
			<div class="row justify-content-center text-center">
				<div class="col-4 col-sm-4 col-md-4 col-lg-6">
					<form id="join_form" method="post">
						<div class="row justify-content-center text-center">
							<div class="col-12 form-group" style="padding-bottom: 15px;">
								<input id="id_input" name="id" class="form-control"
									placeholder="Id"> <span class="sub_warn_msg"
									id="id_input_re_1">사용 가능한 아이디입니다.</span> <span
									class="sub_warn_msg" id="id_input_re_2">아이디가 이미 존재합니다.</span>
								<!--   <span class="sub_warn_msg" id="final_id_ck">아이디를 입력해주세요.</span>-->
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<input id="pw_input" type="password" name="pwd"
									class="form-control" placeholder="Password">
								<!--   <span class="sub_warn_msg" id="final_pw_ck">비밀번호를 입력해주세요.</span>-->
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<input id="pwck_input" type="password" class="form-control"
									placeholder="Password Check">
								<!--  <span class="sub_warn_msg" id="final_pwck_ck">확인용 비밀번호를 입력해주세요.</span> -->
								<span class="sub_warn_msg" id="pwck_input_re_1">비밀번호가
									일치합니다.</span> <span class="sub_warn_msg" id="pwck_input_re_2">비밀번호가
									일치하지 않습니다.</span>
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<input id="user_input" name="name" class="form-control"
									placeholder="Name">
								<!-- <span class="sub_warn_msg" id="final_name_ck">이름을 입력해주세요.</span> -->
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<input id="nick_input" name="nickname" class="form-control"
									placeholder="NickName">
							</div>
						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div class="col-12 form-group">
								<input id="phone_input" name="phone" class="form-control"
									placeholder="PhoneNumber">
								<!-- <span class="sub_warn_msg" id="final_phone_ck">휴대폰번호를 입력해주세요.</span> -->
								<span class="sub_warn_msg" id="phone_input_re">올바르지 못한
									휴대폰번호 형식입니다.</span>
							</div>
						</div>

						<div class="row" style="padding-bottom: 15px;">
							<div id="email_box_css" class="col-12 form-group"
								style="display: flex;">

								<input id="mail_input" name="email" type="text"
									class="form-control" placeholder="Email">

								<div class="col-4" id="mail_check_button">
									<span class="btn btn-black"> 인증번호 전송 </span>
								</div>
							</div>

						</div>
						<div class="row" style="padding-bottom: 15px;">
							<div id="email_check_box_css" class="col-9 form-group">
								<span id="mail_input_box_warn"></span>
								<!-- 메일 인증받는 칸 -->
								<div id="mail_check_input_box">
									<input type="text" class="form-control" id="mail_check_input"
										placeholder="Email Check" disabled="disabled">
								</div>
							</div>
						</div>

						<span id="mail_check_input_box_warn"></span>

						<div class="row justify-content-center text-center">
							<!--가입 및 취소 버튼-->
							<div class="col-2 col-sm-3 col-md-3 col-lg-3 form-group">
								<input type="button" id="join_button" class="btn btn-black"
									value="회원가입">

							</div>
							<div class="col-2 col-sm-2 col-md-2 col-lg-3 form-group">
								<input type="button" id="move_button" class="btn btn-white"
									value="취소" onclick="location.href='/member/join'">
							</div>
						</div>
						<!-- ROW종료 -->
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 스크립트 -->
	<script>
		/* 유효성 검사 통과유무 변수 */
		var idCheck = false; // 아이디
		var idckCheck = false; // 아이디 중복 검사
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var nameCheck = false; // 이름
		var nicknameCheck = false; // 닉네임
		var phoneCheck = false; // 휴대폰번호
		var mailCheck = false; // 이메일
		var mailnumCheck = false; // 이메일 인증번호 확인

		$(document).ready(
				function() {
					//회원가입 버튼(회원가입 기능 작동)
					$("#join_button")
							.click(
									function() {
										/* 입력값 변수 */
										var id = $('#id_input').val(); // id 입력란
										var pw = $('#pw_input').val(); // 비밀번호 입력란
										var pwck = $('#pwck_input').val(); // 비밀번호 확인 입력란
										var name = $('#user_input').val(); // 이름 입력란
										var nickname = $('#nick_input').val(); // 닉네임 입력란
										var phone = $('#phone_input').val(); // 휴대폰번호 입력란
										var mail = $('#mail_input').val(); // 이메일 입력란

										/* 아이디 유효성검사 */
										if (id == "") {
											idCheck = false;
										} else {
											idCheck = true;
										}

										/* 비밀번호 유효성 검사 */
										if (pw == "") {
											pwCheck = false;
										} else {
											pwCheck = true;
										}

										/* 비밀번호 확인 유효성 검사 */
										if (pwck == "") {
											pwckCheck = false;
										} else {
											pwckCheck = true;
										}

										/* 이름 유효성 검사 */
										if (name == "") {
											nameCheck = false;
										} else {
											nameCheck = true;
										}

										/* 닉네임 유효성 검사 */
										if (nickname == "") {
											nicknameCheck = false;
										} else {
											nicknameCheck = true;
										}

										/* 휴대폰번호 유효성 검사 */
										if (phone == "") {
											phoneCheck = false;
										} else {
											phoneCheck = true;
										}

										/* 이메일 유효성 검사 */
										if (mail == "") {
											mailCheck = false;
										} else {
											mailCheck = true;
										}

										/* 최종 유효성 검사 */
										if (idCheck && idckCheck && pwCheck
												&& pwckCheck && pwckcorCheck
												&& nameCheck && nicknameCheck
												&& phoneCheck && mailCheck
												&& mailnumCheck) {
											$("#join_form").attr("action",
													"/member/join");
											$("#join_form").submit();
											alert("회원가입이 완료되었습니다.");
										} else {
											alert("빈 칸 없이 입력해 주세요.")
										}

										return false;
									});
				});

		// 아이디 중복검사
		$('#id_input').on("propertychange change keyup paste input",
				function() {
					/* console.log("keyup 테스트"); */
					var id = $('#id_input').val(); // .id_input에 입력되는 값
					var data = {
						id : id
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data,
						success : function(result) {
							/* console.log("성공 여부" + result); */
							if (result != 'fail') {
								$('#id_input_re_1').css("display", "block");
								$('#id_input_re_2').css("display", "none");
								// 아이디 중복이 없는 경우
								idckCheck = true;
							}

							else {
								$('#id_input_re_2').css("display", "block");
								$('#id_input_re_1').css("display", "none");
								// 아이디 중복된 경우
								idckCheck = false;
							}

						}// success 종료
					}); // ajax 종료

				});// function 종료

		/* 인증번호 이메일 전송 */
		var code = ""; //이메일전송 인증번호 저장위한 코드

		$("#mail_check_button").click(function() {
			var email = $("#mail_input").val(); // 입력한 이메일
			var checkBox = $("#mail_check_input"); // 인증번호 입력란
			var boxWrap = $("#mail_check_input_box"); // 인증번호 입력란 박스
			var warnMsg = $("#mail_input_box_warn"); // 이메일 입력 경고글

			/* 이메일 형식 유효성 검사 */
			if (mailFormCheck(email)) {
				warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
				warnMsg.css("display", "block");
			} else {
				warnMsg.html("올바르지 못한 이메일 형식입니다.");
				warnMsg.css("display", "block");
				return false;
			}

			$.ajax({
				type : "GET",
				url : "mailCheck?email=" + email,
				success : function(data) {
					console.log("data : " + data);
					checkBox.attr("disabled", false);
					boxWrap.attr("id", "mail_check_input_box_true");
					code = data;
				}
			});
		});

		/* 인증번호 비교 */
		$("#mail_check_input").blur(function() {
			var inputCode = $("#mail_check_input").val(); // 입력코드    
			var checkResult = $("#mail_check_input_box_warn"); // 비교 결과

			if (inputCode == code) { // 일치할 경우
				checkResult.html("인증번호가 일치합니다.");
				checkResult.attr("class", "correct");
				mailnumCheck = true; // 일치할 경우
			} else { // 일치하지 않을 경우
				checkResult.html("인증번호를 다시 확인해주세요.");
				checkResult.attr("class", "incorrect");
				mailnumCheck = false; // 일치하지 않을 경우
			}
		});

		/* 비밀번호 확인 일치 유효성 검사 */
		$('#pwck_input').on("propertychange change keyup paste input",
				function() {
					var pw = $('#pw_input').val();
					var pwck = $('#pwck_input').val();
					$('#final_pwck_ck').css('display', 'none');

					if (pw == pwck) {
						$('#pwck_input_re_1').css('display', 'block');
						$('#pwck_input_re_2').css('display', 'none');
						pwckcorCheck = true;
					} else {
						$('#pwck_input_re_1').css('display', 'none');
						$('#pwck_input_re_2').css('display', 'block');
						pwckcorCheck = false;
					}
				});

		/* 입력 이메일 형식 유효성 검사 */
		function mailFormCheck(email) {
			var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			return form.test(email);
		}

		/* 휴대폰 번호 유효성 검사 */
		$('#phone_input').on("propertychange change keyup paste input",
				function() {
					var phoneRule = /^010-[0-9]{4}-[0-9]{4}$/;
					var phone = $('#phone_input').val();

					if (phoneRule.test(phone)) {
						$('#phone_input_re').css('display', 'none');
						phoneCheck = true;
					} else {
						$('#phone_input_re').css('display', 'block');
						phoneCheck = false;
					}
				});
	</script>

	<%@ include file="../../views/footer.jsp"%>

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
