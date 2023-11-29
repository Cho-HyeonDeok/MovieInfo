<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Minimal
* Template Author: Untree.co
* Author URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html>

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

  <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="../resources/assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="../resources/assets/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="../resources/assets/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="../resources/assets/fonts/icomoon/style.css">
  <link rel="stylesheet" href="../resources/assets/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="../resources/assets/css/aos.css">
  <link rel="stylesheet" href="../resources/assets/css/style.css">
  <link rel="stylesheet" href="../resources/css/member/join.css">

  <title>MoviePort</title>
  
  
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
		<div class="site_nav_msg">
        <ul class="js-clone-nav d-none d-lg-inline-none site-menu float-right site-nav-wrap">
     		
          <li ><a href="#home-section" class="nav-link active">Main</a></li>
          
          <li ><a href="#portfolio-section" id="site_nav_bidulgi" class="nav-link">MyPage</a></li>
          <li ><a href="/mypage/pwdUpdate" id="site_nav_bidulgi">비밀번호 변경</a></li>
		  <li ><a href="/mypage/reviews" id="site_nav_bidulgi">내가 쓴 글 목록</a></li>
		  <li ><a href="/mypage/likes" id="site_nav_bidulgi">좋아요 표시한 목록</a></li>
		  <li ><a href="/mypage/resign" id="site_nav_bidulgi">회원탈퇴</a></li>
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
         <li><a href="/member/login">login</a></li>
		 <li><a href="/member/join">join</a></li>
        </ul>
		</div>
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
          <h1 class="heading gsap-reveal-hero mb-3"><strong>YourPasswordPort<span class="text-primary">.</span></strong></h1>
          <h2 class="subheading gsap-reveal-hero mb-4">
            Your Password in here</strong>.
          </h2>

        </div>
        
         <div id="h_H" class="col-md-10 col-lg-12 text-center">
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
	      
	      <!--  
		
			
		  <div class="menu_pan">
		  	<div class="w_1350">
		  	<div class="menu_category">
		  			
		  		    <div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>

		  		
		  	</div>
		  	
		  	<div class="menu_category">
		  			
		  		    <div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>

		  		
		  	</div>
		  	
		  	<div class="menu_category">
		  			
		  		    <div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>
		  		 	<div class="category"><a href="/movieInfo">액션/로맨스</a></div>

		  		
		  	</div>
		  	
		  
		  </div>
	      
          </div><!--메뉴 판 종료-->
          </div>
  
      </div>
      
    </div>
  </div>
  
  
  
  <!-- 헤더 끝 -->
  



	<div class="untree_co-section" id="contact-section">
      <div class="container">
       

        <div class="row justify-content-center text-center">
          <div class="col-3 col-sm-3 col-md-3 col-lg-4">
              
               <form id="findForm" method="post">
         
                <div class="row" style="padding-bottom: 25px;">
                 <div class="col-12 form-group">
                 	<div class="pwdUpdate_text">
                 	<span id="pwdUpdate_text_1">아래의 이메일로 임시 비밀번호가 발송되었습니다.</span>
                 	<span id="pwdUpdate_text_1" style="color: blue">${email}</span>
                 	<br>
                 	<span id="pwdUpdate_text_1">임시 비밀번호로 로그인 후 반드시 비밀번호를 변경해주세요▼</span>
                
                    </div>
                </div>
                 </div>
                 
             
              
				
					<div class="row justify-content-center text-center" style="padding-bottom: 15px;">
				  <!--가입 및 취소 버튼-->
	                <div class="col-12 form-group">
	                  <button type="button" class="btn btn-black" onclick="location.href='/member/login'">Login</button>
	                  <button type="button" class="btn btn-white" onclick="location.href='/main'">Main</button>
	                </div>
	               
	                </div>
    
                
		
				 </form>
              
              </div>
          
          </div>
         
        	</div>
        </div>





    <div class="site-footer">
      <div class="container">

        <div class="row">
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


    <script src="../resources/assets/js/custom.js"></script>
    
  </body>

  </html>
