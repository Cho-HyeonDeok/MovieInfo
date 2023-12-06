<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- /*
* Template Name: Minimal
* Template Author: Untree.co
* Author URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="../resources/assets/movieIcon.png">
  <!--아이콘 출처 
  <a href="https://www.flaticon.com/kr/free-icons/" title="영화 아이콘">영화 아이콘  제작자: Good Ware - Flaticon</a> -->

  <meta name="description" content="" />
  <meta name="keywords" content="" />

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=PT+Mono&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

  <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../resources/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="../resources/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="../resources/assets/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="../resources/assets/fonts/icomoon/style.css">
  <link rel="stylesheet" href="../resources/assets/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="../resources/assets/css/aos.css">
  <link rel="stylesheet" href="../resources/assets/css/style.css">
  <link rel="stylesheet" href="../resources/css/member/join.css">
  <link rel="stylesheet" href="../resources/css/main.css">
  <link rel="stylesheet" href="../resources/css/movie.css">

  <title>MoviePort</title>
  <script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script> 
  
  
</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="100">

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
        <a href="/main" class="logo m-0">MoviePort<span class="text-primary">.</span></a>
        
        <div class="site-navigation-login">
        <span><a href="/member/login">Login&nbsp</a>/
		<a href="/member/join">Join</a></span>
		</div>
		
        <ul class="js-clone-nav d-none d-lg-inline-none site-menu float-right site-nav-wrap">
     		
          <li><a href="#home-section" class="nav-link active">Main</a></li>
          <li><a href="/member/login">login</a></li>
			<li><a href="/member/join">join</a></li>
          <li><a href="#portfolio-section" class="nav-link">MyPage</a></li>
          <li class="has-children">
            <a href="#about-section" class="nav-link">About</a>
            <ul class="dropdown">
              <li><a href="bidulgi.jsp" class="nav-link">Elements</a></li>
              <li class="has-children">
                <a href="#">Menu Two</a>
                <ul class="dropdown">
                  <li><a href="#" class="nav-link">Sub Menu One</a></li>
                  <li><a href="#" class="nav-link">Sub Menu Two</a></li>
                  <li><a href="#" class="nav-link">Sub Menu Three</a></li>
                </ul>
              </li>
              <li><a href="#" class="nav-link">Menu Three</a></li>
            </ul>
          </li>
          <li><a href="#services-section" class="nav-link">Services</a></li>

          <li><a href="#contact-section" class="nav-link">Contact us</a></li>
        </ul>

        <a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-inline-block" data-toggle="collapse" data-target="#main-navbar">
          <span></span>
        </a>

      </div>
    </div>
  </nav>



  <div class="untree_co-section pb-0" id="home-section">
    <div class="container">
      <div class="row justify-content-center text-center">
        <div class="col-md-7">
          <h1 class="heading gsap-reveal-hero mb-3"><strong>MoviePort<span class="text-primary">.</span></strong></h1>
          <h2 class="subheading gsap-reveal-hero mb-4">
            All of Reviews in here</strong>.
          </h2>

        </div>
        
         <div id="h_H" class="col-md-10 col-lg-12">
 	  <div class="h_L">
          <ul class="h_menu">
          
	          <li><a href="/movieInfo/" id="bidulgi">액션</a></li>
	          <li><a href="/movieInfo/" id="bidulgi">로맨스</a></li>
	          <li><a href="/movieInfo/" id="bidulgi">코미디</a></li>
	          <li><a href="/movieInfo/" id="bidulgi">스릴러</a></li>
	          <li><a href="/movieInfo/" id="bidulgi">호러</a></li>
	          <li><a href="/movieInfo/" id="bidulgi">SF</a></li>
	          <li><a href="/movieInfo/" id="bidulgi">애니</a></li>
	          <li class="bar"></li>
          </ul>
			
	      </div>
	      
	     
          </div>
  
      </div>
      
    </div>
  </div>
  
  
  
  <!-- 헤더 끝 -->
  



<!-- 상세 영화 정보 -->

  <div class="untree_co-section untree_co-section-4 pb-0"  id="portfolio-section">
    <div class="container">


 
      <div id="portfolio-single-holder"></div>

      <div class="portfolio-wrapper">
	
		
		  <div class="row mb-5 align-items-stretch">
	

            <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="movie_poster">
            	<div id ="movie_poster_1">
              <img  src="../../resources/img/${movieInfo.title}.jpg" alt="Image" class="img-fluid">
               </div>
             </div>
            </div>

            <div class="col-lg-6 pl-lg-5">
              <div class="row mb-3" >
                <div class="col-sm-12 col-md-12 col-lg-12 mb-8">
                  <div class="movie_font_set">
                  <!-- class="detail-val" -->
                  	<span class="material-symbols-outlined">slideshow</span> <c:out  value="${movieInfo.title}"></c:out>
                  	<span class="movie_font_detail">장르 | <c:out value="${movieInfo.genres}"></c:out></span>
                    
                  </div>
                </div>
              
                <div class="col-sm-6 col-md-6 col-lg-6 mb-4">
                  <div class="movie_detail_part">
                    <span id="movie_font_another">평점 |    <c:out value="${movieInfo.totalrate}"></c:out>점</span>
                    <span id="movie_font_another">상영 시간 |   <c:out value="${movieInfo.runtime}"></c:out>분</span>   
                    
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 mb-4">
                  <div class="movie_detail_part">
                                    
                    <span id="movie_font_another">조회수 |    <c:out value="${movieInfo.hits}"></c:out></span>
                    <span id="movie_font_another">좋아요 | <c:out value="${movieInfo.likes}"></c:out></span>
                   
                  </div>
                </div>
              </div>
				<div class="movie_content_font">
              <p id="movie_content"><c:out value="${movieInfo.content}"></c:out></p>
				</div>
            </div>

       
          </div>

	
	<form id="moveForm" method="get">
		<input type="hidden" name="m_code" value='<c:out value="${movieInfo.m_code}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
	</form>

	<!-- 찜 등록 및 취소 -->
	
	<!-- 평점 매기기 -->

	<!-- 리뷰 출력 및 작성 --> <!-- 유저 기본 정보  -->
 <div>
 		<div class="movie_review_font">
		<span id="movie_review_font_title">리뷰</span>
		</div>
		<!-- 로그인 전-->
		<c:if test="${member == null}">
			<div class="review_before_font" style="margin-left: 4%;">
				<span id="review_before_1" style="color: red" >리뷰 작성은 로그인 후 이용 가능한 서비스입니다.   </span>
				
				<a href="/member/login" ><span class="review_before_2">로그인</span> </a>
			
				<br>
				<br>
			</div>
		</c:if>
		
		<!-- 로그인 후 -->
		<c:if test="${member != null}">
			<form id="insert_review" method="post">
				<div id="input_wrap">
					<div id="movieTitle_div">
						
					</div>
					
					
					
				<div class="wrap">

		    	<div class="rating">
		        <label class="rating__label rating__label--half" for="starhalf">
		            <input type="radio" id="starhalf" class="rating__input" name="rate" value="1">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--full" for="star1">
		            <input type="radio" id="star1" class="rating__input" name="rate" value="2">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--half" for="star1half">
		            <input type="radio" id="star1half" class="rating__input" name="rate" value="3">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--full" for="star2">
		            <input type="radio" id="star2" class="rating__input" name="rate" value="4">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--half" for="star2half">
		            <input type="radio" id="star2half" class="rating__input" name="rate" value="5">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--full" for="star3">
		            <input type="radio" id="star3" class="rating__input" name="rate" value="6">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--half" for="star3half">
		            <input type="radio" id="star3half" class="rating__input" name="rate" value="7">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--full" for="star4">
		            <input type="radio" id="star4" class="rating__input" name="rate" value="8">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--half" for="star4half">
		            <input type="radio" id="star4half" class="rating__input" name="rate" value="9">
		            <span class="star-icon"></span>
		        </label>
		        <label class="rating__label rating__label--full" for="star5">
		            <input type="radio" id="star5" class="rating__input" name="rate" value="10">
		            <span class="star-icon"></span>
		        </label>
		    </div>
		</div>
					
				
					<div id="comments_div" class="comments_text" style="margin-left: 50px;">
					
						<textarea id="comments" class="comments_text_1" name="comments" style="width: 100%;"></textarea>
					</div>
				
				</div>

				<input type="hidden" name="id" value='<c:out value="${member.id}"/>'>
				<input type="hidden" name="m_code"
					value='<c:out value="${movieInfo.m_code}"/>'> <input
					type="hidden" name="title"
					value='<c:out value="${movieInfo.title}"/>'>
				
				<div id="input_wrap">
					<input type="button" id="insert_button" class="btn btn-black" style="margin-left: 50px;" value="리뷰 등록">
				</div>
				
			</form>
		</c:if>
	</div>

	<div>
	
		<div class="review_comment_font">
		<c:if test="${empty reviewList}">
			<span style="margin-left: 50px;" id="comment_font_3">등록된 리뷰가 없습니다.</span>
		</c:if>
		
					<hr>
				<c:forEach items="${reviewList}" var="reviewList">
						<span id="rating_font_1"><c:out value="${reviewList.rate}"></c:out>점<br></span>
						<span id="comment_font_1"><c:out value="${reviewList.comments}"></c:out><br></span>
						<span id="comment_font_2"><c:out value="${reviewList.id}"></c:out></span>
						<span id="comment_font_2">º작성일 : <fmt:formatDate value="${reviewList.writedate}"
								pattern="yyyy-MM-dd" /></span>
						<hr>
					
						
						
								
						
					
				</c:forEach>
			
		</div>
	</div>
	
		</div>
		
			
		
 
 

<!-- footer -->
    <div class="site-footer" >
      <div class="container">
		
        <div class="row" id="footer_line">
          <div class="col-lg-3">
            <div class="widget">
              <h3>Home</h3>
              <ul class="list-unstyled float-left links">
                <li><a href="#">Untree.co</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Terms</a></li>
                <li><a href="#">Privacy</a></li>
              </ul>
            </div> <!-- /.widget -->
          </div> <!-- /.col-lg-3 -->

          <div class="col-lg-3">
            <div class="widget">
              <h3>Projects</h3>
              <ul class="list-unstyled float-left links">
                <li><a href="#">HTML5</a></li>
                <li><a href="#">CSS3</a></li>
                <li><a href="#">Untree.co</a></li>
                <li><a href="#">Free Templates</a></li>
                <li><a href="#">WordPress Themes</a></li>
              </ul>
            </div> <!-- /.widget -->
          </div> <!-- /.col-lg-3 -->

          <div class="col-lg-3">
            <div class="widget">
              <h3>Services</h3>
              <ul class="list-unstyled float-left links">
                <li><a href="#">Untree.co</a></li>
                <li><a href="#">jQuery</a></li>
                <li><a href="#">Bootstrap</a></li>
                <li><a href="#">Freebies</a></li>
              </ul>
            </div> <!-- /.widget -->
          </div> <!-- /.col-lg-3 -->


          <div class="col-lg-3">
            <div class="widget">
              <h3>Contact</h3>
              <address>43 Raymouth Rd. Baltemoer, London 3910</address>
              <ul class="list-unstyled links mb-4">
                <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                <li><a href="tel://11234567890">+1(123)-456-7890</a></li>
                <li><a href="mailto:info@mydomain.com">info@mydomain.com</a></li>
              </ul>

              <h3>Connect</h3>
              <ul class="list-unstyled social">
                <li><a href="#"><span class="icon-instagram"></span></a></li>
                <li><a href="#"><span class="icon-twitter"></span></a></li>
                <li><a href="#"><span class="icon-facebook"></span></a></li>
                <li><a href="#"><span class="icon-linkedin"></span></a></li>
                <li><a href="#"><span class="icon-pinterest"></span></a></li>
                <li><a href="#"><span class="icon-dribbble"></span></a></li>
              </ul>

            </div> <!-- /.widget -->
          </div> <!-- /.col-lg-3 -->

        </div> <!-- /.row -->





        <div class="row mt-5">
          <div class="col-12 text-center">
            <!-- 
              **==========
              NOTE: 
              Please don't remove this copyright link unless you buy the license here https://untree.co/license/  

              **==========
            -->
            <p class="mb-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a>  Distributed By <a href="https://themewagon.com">ThemeWagon</a> <!-- License information: https://untree.co/license/ -->
            </p>
          </div>
        </div>
      </div> <!-- /.container -->
    </div> <!-- /.site-footer -->

    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>

    <script src="../resources/assets/js/jquery-3.4.1.min.js"></script>
    <script src="../resources/assets/js/popper.min.js"></script>
    <script src="../resources/assets/js/bootstrap.min.js"></script>
    <script src="../resources/assets/js/owl.carousel.min.js"></script>
    <script src="../resources/assets/js/jquery.animateNumber.min.js"></script>
    <script src="../resources/assets/js/jquery.waypoints.min.js"></script>
    <script src="../resources/assets/js/jquery.fancybox.min.js"></script>
    <script src="../resources/assets/js/aos.js"></script>
    <script src="../resources/assets/js/wave-animate.js"></script>
    <script src="../resources/assets/js/circle-progress.js"></script>
    <script src="../resources/assets/js/imagesloaded.pkgd.js"></script>
    <script src="../resources/assets/js/isotope.pkgd.min.js"></script>
    <script src="../resources/assets/js/jquery.easing.1.3.js"></script>
    <script src="../resources/assets/js/TweenMax.min.js"></script>
    <script src="../resources/assets/js/ScrollMagic.min.js"></script>
    <script src="../resources/assets/js/scrollmagic.animation.gsap.min.js"></script>
    <script src="../resources/assets/js/movie_star.js"></script>


    <script src="../resources/assets/js/custom.js"></script>
    <script>
		/* 페이지 이동 버튼 */
		let moveForm = $('#moveForm');
		$(".pageMaker_btn a").on("click", function(e) {

			e.preventDefault();

			moveForm.find("input[name='pageNum']").val($(this).attr("href"));

			moveForm.submit();
		});

		/* 작가 검색 버튼 동작 */
		let searchForm = $('#searchForm');
		$("#searchForm button").on("click", function(e) {

			e.preventDefault();

			/* 검색 키워드 유효성 검사 */
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하십시오");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");

			searchForm.submit();
		});
		

		/* 정렬 옵션 변경 이벤트 */
	    $("#sortOption").on("change", function () {
	        // 선택된 옵션 값을 가져옴
	        let selectedOption = $(this).val();
	
	       	// 정렬 처리
	        if (selectedOption === "totalrate") {
	            // 평점순으로 정렬
	            searchForm.append('<input type="hidden" name="sortOption" value="totalrate">');
	        }  else if (selectedOption === "showdate") {
	            // 최신순으로 정렬
	            searchForm.append('<input type="hidden" name="sortOption" value="showdate">');
	        } else {
	            // 다른 옵션을 선택하거나 기본 옵션을 선택한 경우 hidden input 제거
	            searchForm.find("input[name='sortOption']").remove();
	        }
	
	        // 정렬을 적용하기 위해 폼 제출
	        searchForm.submit();
	    });
		
		

		/* 작가 상세 페이지 이동 */
		$(".move").on("click", function(e) {
			
			e.preventDefault();
			
			moveForm.append("<input type='hidden' name='m_code' value='"+ $(this).attr("href") + "'>");
			moveForm.attr("action", "/movie/movieDetail");
			moveForm.submit();
			moveForm.find("input[name='m_code']").remove();
		});
	</script>

	<script>
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}

		// 리뷰 등록 버튼 클릭 시      
		$('#insert_button').click(function() {
			/* 입력한 변수 */
			var comments = $("#comments").val();

			/* 유효성 검사 */
			if (comments == "") {
				alert("내용을 입력하세요.");
				return false;
			} else {
				$("#insert_review").attr("action", "/movie/insertReview");
				$("#insert_review").submit();
				return true;
			}
		});
	</script>
    
  </body>

  </html>
