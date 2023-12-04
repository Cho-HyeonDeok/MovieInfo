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
  
 <div class="pb-0">
    <div class="container">
    
	    
			<form id="searchForm" action="/main" method="get">
				
				<div class="row" style="padding-top: 25px;">
          			<div class="col-4">
					<input id="search_place"class="form-control" type="text" name="keyword"
						value='<c:out value="${pageMaker.cri.keyword}"></c:out>'> <input
						type="hidden" name="pageNum"
						value='<c:out value="${pageMaker.cri.pageNum}"></c:out>'> <input
						type="hidden" name="amount" value='${pageMaker.cri.amount}'>
						
					</div>	
				
			
          			<div class="col-4">
						<button id ="search_btn" class='btn btn-black'>검색</button>
				
				</div>
			
          		<div class="col-4">
          			<div class="sorting">
						<select id="sortOption" class="select" name="sortOption">
							<option>선택하세요</option>
							<option value="totalrate">평점</option>
							<option value="showdate" >최신순</option>
						</select>
						 <span class="icoArrow"><img src="https://freepikpsd.com/media/2019/10/down-arrow-icon-png-7-Transparent-Images.png" alt=""></span>
					</div>
				</div>
				</div>
						
				
		
				</form>
	
		</div>
	
    
    </div>


<!-- 상세 영화 정보 -->

  <div class="untree_co-section untree_co-section-4 pb-0"  id="portfolio-section">
    <div class="container">


 
      <div id="portfolio-single-holder"></div>

      <div class="portfolio-wrapper">
		<div id="movie_content_wrap">
		
		  <div class="row mb-5 align-items-stretch">

            <div class="col-lg-6 mb-5 mb-lg-0">
              <img src="../../resources/img/${movieInfo.title}.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="col-lg-6 pl-lg-5">
              <div class="row mb-3">
                <div class="col-sm-6 col-md-6 col-lg-6 mb-4">
                  <div class="detail-v1">
                  	<c:out class="detail-val" value="${movieInfo.title}"></c:out>
                  	<span class="detail-label"><c:out value="${movieInfo.genres}"></c:out></span>
                    
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 mb-4">
                  <div class="detail-v1">
                    
                    <span class="detail-val"><a href="#">Identity</a>, <a href="#">Web Design</a></span>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 mb-4">
                  <div class="detail-v1">
                    <span class="detail-label">Client</span>
                    <span class="detail-val">Untree.co</span>
                  </div>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-6 mb-4">
                  <div class="detail-v1">
                    <span class="detail-label">Visit</span>
                    <span class="detail-val"><a href="https://untree.co">https://untree.co/</a></span>
                  </div>
                </div>
              </div>

              <p>Far far away,he blind te large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>

              <p>Evtexts it is an almost unorthographice name of Lorem Ipsum decided to leave for the far World of Grammar.</p>

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
	<form id="reviewInsert" method="post" action="/movie/insertReview">
		<div>
			<textarea rows="10" cols="50" name="comments"></textarea>
			<button type="submit">리뷰 작성</button>
		</div>
	</form>

	
		</div>
		
			
		
 <!-- 컨텐츠 예시 
          <div class="item web branding col-sm-6 col-md-6 col-lg-3 isotope-mb-2">
            <a href="portfolio-single-1.jsp" class="portfolio-item ajax-load-page isotope-item gsap-reveal-img" data-id="1">
              <div class="overlay">
                <span class="wrap-icon icon-link2"></span>
                <div class="portfolio-item-content">
                  <h3>Call of Bidulgi</h3>
                  <p>Action, Comic</p>
                </div>
              </div>
              <img src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dlGyzCxbBQK1U2O5o31Z1hB6erc.jpg" class="lazyload  img-fluid" alt="Images" />
            </a>
          </div>

          <div class="item web branding col-sm-6 col-md-6 col-lg-3 isotope-mb-2">
            <a href="portfolio-single-2.jsp" class="portfolio-item ajax-load-page isotope-item gsap-reveal-img" data-id="2">
              <div class="overlay">
                <span class="wrap-icon icon-link2"></span>
                <div class="portfolio-item-content">
                  <h3>Book Binding</h3>
                  <p>illustration, application</p>
                </div>
              </div>
              <img src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dlGyzCxbBQK1U2O5o31Z1hB6erc.jpg" class="lazyload  img-fluid" alt="Images" />
            </a>
          </div>

       

          <div class="item web branding col-sm-6 col-md-6 col-lg-3 isotope-mb-2">
            <a href="portfolio-single-2.jsp" class="portfolio-item ajax-load-page isotope-item gsap-reveal-img" data-id="2">
              <div class="overlay">
                <span class="wrap-icon icon-link2"></span>
                <div class="portfolio-item-content">
                  <h3>Nike Shoe</h3>
                  <p>illustration, application</p>
                </div>
              </div>
              <img src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dlGyzCxbBQK1U2O5o31Z1hB6erc.jpg" class="lazyload  img-fluid" alt="Images" />
            </a>
          </div>
          
          
          <div class="item web branding col-sm-6 col-md-6 col-lg-3 isotope-mb-2">
            <a href="portfolio-single-2.jsp" class="portfolio-item ajax-load-page isotope-item gsap-reveal-img" data-id="2">
              <div class="overlay">
                <span class="wrap-icon icon-link2"></span>
                <div class="portfolio-item-content">
                  <h3>Nike Shoe</h3>
                  <p>illustration, application</p>
                </div>
              </div>
              <img src="https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dlGyzCxbBQK1U2O5o31Z1hB6erc.jpg" class="lazyload  img-fluid" alt="Images" />
            </a>
          </div>
      

     -->


        </div>
      </div>

<!-- 페이징 -->
    
     <div class="pb-0"  id="portfolio-section">
    <div class="container">
    	<div id="pageMaker_wrap" class="page_wrap">
    	<div class="row">
    		<div class="col-10">
    		<div class="page_nation">
			<ul id="pageMaker" class="pagination_model">
				<!-- 이전 버튼 -->
				<c:if test="${pageMaker.prev}">
					<li class="pageMaker_btn prev"><a
						href="${pageMaker.pageStart - 1}">◁</a></li>
				</c:if>

				<!-- 페이지 번호 -->
				<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}"
					var="num">
					<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
						<a class="num"  href="${num}">${num} </a>
					</li>
				</c:forEach>

				<!-- 다음 버튼 -->
				<c:if test="${pageMaker.next}">
					<li class="pageMaker_btn next"><a
						href="${pageMaker.pageEnd + 1}">▷</a></li>
				</c:if>
			</ul>
			</div>
			</div>
			</div>
		</div>

		<form id="moveForm" action="/main" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
		</form>
		
		</div>
		</div>


<!--  

    <div class="untree_co-section pb-0" id="services-section">
      <div class="container">
        <div class="row mb-4">
          <div class="col-lg-7 text-center mx-auto">
            <h2 class="section-heading gsap-reveal-hero mb-0"><strong>Services</strong></h2>
            <p class="gsap-reveal-hero">The Big Oxmox advised her not to do so, because there were thousands of bad Commas.</p>
            <div class="wave gsap-reveal-hero" >
              <svg>
                <path d="M10,10 L50,100 L90,50" stroke="#0389ff"></path>
              </svg>
            </div>
          </div>
        </div>

        <div class="row">

          <div class="col-6 col-sm-6 col-md-6 col-lg-4 mb-4">
            <div class="service text-center">
              <div class="gsap-reveal-hero mb-3">
                <span class="icon-service"><img src="../resources/assets/images/svg/service-icon-7.svg" alt="Image" class="img-fluid"></span>
              </div>
              <h3 class="gsap-reveal-hero">Marketing</h3>
              <p class="gsap-reveal-hero">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>
          <div class="col-6 col-sm-6 col-md-6 col-lg-4 mb-4">
            <div class="service text-center">
              <div class="gsap-reveal-hero mb-3">
                <span class="icon-service"><img src="../resources/assets/images/svg/service-icon-6.svg" alt="Image" class="img-fluid"></span>
              </div>
              <h3 class="gsap-reveal-hero">Photography</h3>
              <p class="gsap-reveal-hero">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>

          <div class="col-6 col-sm-6 col-md-6 col-lg-4 mb-4">
            <div class="service text-center">
              <div class="gsap-reveal-hero mb-3">
                <span class="icon-service"><img src="../resources/assets/images/svg/service-icon-1.svg" alt="Image" class="img-fluid"></span>
              </div>
              <h3 class="gsap-reveal-hero">Web Design</h3>
              <p class="gsap-reveal-hero">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>


          <div class="col-6 col-sm-6 col-md-6 col-lg-4 mb-4">
            <div class="service text-center">
              <div class="gsap-reveal-hero mb-3">
                <span class="icon-service"><img src="../resources/assets/images/svg/service-icon-8.svg" alt="Image" class="img-fluid"></span>
              </div>
              <h3 class="gsap-reveal-hero">App Development</h3>
              <p class="gsap-reveal-hero">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>

          <div class="col-6 col-sm-6 col-md-6 col-lg-4 mb-4">
            <div class="service text-center">
              <div class="gsap-reveal-hero mb-3">
                <span class="icon-service"><img src="../resources/assets/images/svg/service-icon-4.svg" alt="Image" class="img-fluid"></span>
              </div>
              <h3 class="gsap-reveal-hero">Search Ranking</h3>
              <p class="gsap-reveal-hero">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>

          <div class="col-6 col-sm-6 col-md-6 col-lg-4 mb-4">
            <div class="service text-center">
              <div class="gsap-reveal-hero mb-3">
                <span class="icon-service"><img src="../resources/assets/images/svg/service-icon-5.svg" alt="Image" class="img-fluid"></span>
              </div>
              <h3 class="gsap-reveal-hero">Branding</h3>
              <p class="gsap-reveal-hero">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
          </div>

        </div>
      </div>
    </div>


   

    <div class="untree_co-section testimonial-wrap">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-7 text-center mx-auto">
            <h2 class="section-heading gsap-reveal-hero mb-0"><strong>Testimonials</strong></h2>
            <p class="gsap-reveal-hero">What clients say...</p>

            <div class="wave gsap-reveal-hero" >
              <svg>
                <path d="M10,10 L50,100 L90,50" stroke="#0389ff"></path>
              </svg>
            </div>
          </div>
        </div>


        <div data-aos="fade-left" data-aos-delay="200">



          <div class="owl-carousel owl-3-slider">
            <div class="item">
              <div class="testimonial-v1">
                <img src="../resources/assets/images/person_1.jpg" alt="Image" class="img-fluid">
                <div class="mb-4">
                  <h3>James Smith</h3>
                  <span class="caption">CEO &amp; Co-Founder</span>
                </div>
                <blockquote>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                </blockquote>
              </div>
            </div>
            
            -->
            <!-- END .item -->
<!--  
         
<!--
          
<!-- 
           
            <!-- 
          </div>
        </div>
      </div>
    </div>
 -->
 
<!-- 
    <div class="untree_co-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-7 text-center mx-auto">
            <h2 class="section-heading gsap-reveal-hero mb-0"><strong>Blog Posts</strong></h2>
            <p class="gsap-reveal-hero">News &amp; Updates</p>

            <div class="wave gsap-reveal-hero" >
              <svg>
                <path d="M10,10 L50,100 L90,50" stroke="#0389ff" stroke-width="2"></path>
              </svg>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="0">
            <div class="post-entry">
              <a href="#" class="thumb"><img src="../resources/assets/images/gal_1.jpg" alt="image" class="img-fluid"></a>
              <h3><a href="#">Separated they live in</a></h3>
              <div class="post-meta">
                Aug 4, 2020 by <a href="#">Admin</a> in <a href="#">Web Design</a>
              </div>
            </div>
          </div>
          <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
            <div class="post-entry">
              <a href="#" class="thumb"><img src="../resources/assets/images/gal_2.jpg" alt="image" class="img-fluid"></a>
              <h3><a href="#">Separated they live in</a></h3>
              <div class="post-meta">
                Aug 4, 2020 by <a href="#">Admin</a> in <a href="#">Web Design</a>
              </div>
            </div>
          </div>
          <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
            <div class="post-entry">
              <a href="#" class="thumb"><img src="../resources/assets/images/gal_3.jpg" alt="image" class="img-fluid"></a>
              <h3><a href="#">Separated they live in</a></h3>
              <div class="post-meta">
                Aug 4, 2020 by <a href="#">Admin</a> in <a href="#">Web Design</a>
              </div>
            </div>
          </div>
          <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
            <div class="post-entry">
              <a href="#" class="thumb"><img src="../resources/assets/images/gal_4.jpg" alt="image" class="img-fluid"></a>
              <h3><a href="#">Separated they live in</a></h3>
              <div class="post-meta">
                Aug 4, 2020 by <a href="#">Admin</a> in <a href="#">Web Design</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="untree_co-section" id="contact-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-7 text-center mx-auto">
            <h2 class="section-heading gsap-reveal-hero mb-0"><strong>Contact</strong></h2>
            <p class="gsap-reveal-hero">Available for work. Get in touch</p>

            <div class="wave gsap-reveal-hero" >
              <svg>
                <path d="M10,10 L50,100 L90,50" stroke="#0389ff"></path>
              </svg>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <form action="#">
              <div class="row">
                <div class="col-lg-6 form-group">
                  <input type="text" class="form-control" placeholder="Firstname">
                </div>
                <div class="col-lg-6 form-group">
                  <input type="text" class="form-control" placeholder="Lastname">
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 form-group">
                  <input type="email" class="form-control" placeholder="Email address">
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 form-group">
                  <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Write your message..."></textarea>
                </div>
              </div>
              <div class="row">
                <div class="col-12 form-group">
                  <input type="submit" class="btn btn-black" value="Send Message">
                </div>
              </div>
            </form>
          </div>
          <div class="col-lg-6">
            <div id="map">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d320.12856481718734!2d-73.97263090448001!3d40.78263296621774!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2588ff21eaaab%3A0xd0128d5d89a30429!2sMargarita%20Anthoine!5e0!3m2!1sen!2sph!4v1597149027268!5m2!1sen!2sph"  frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
 -->
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

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
    
  </body>

  </html>
