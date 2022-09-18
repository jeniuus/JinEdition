<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 외부스타일시트 : header.css -->
<link rel="stylesheet" href="css/header.css">

<style type="text/css">

</style>

</head>
<body>

	<!--제이쿼리 적용 방식: CDN방식 --> <!-- 모달창 불러오는데 이용 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
	</script>

	<!-- js -->
	<script type="text/javascript">	
	$(function(){
		$(".loadsection").load("login_resist_form.jsp"); // <div class="loadsection"></div> 여기에 login_resist_form.jsp가 들어옴 	
	});
	</script>
	

<div class="header-top bg-light">
		
			<!-- ▼ header -->
			<div class="container">
				<div class="row align-items-center">
					<div class="col-6 col-lg-3">
						<!-- 로고 : 정보가 들어있는 .do로 이동해야함 -->
						<a href="main.do" class="logo-name"> JINEDITION
						</a>
					</div>
					<div class="col-lg-3 d-none d-lg-block">

						<div class="quick-contact-icons d-flex">
							<div class="icon align-self-start">
								<span class="icon-location-arrow text-primary"></span>
							</div>
							<div class="text">
								<span class="h4 d-block">서울특별시</span> <span
									class="caption-text">강남구 테헤란로</span>
							</div>
						</div>

					</div>
					<div class="col-lg-3 d-none d-lg-block">
						<div class="quick-contact-icons d-flex">
							<div class="icon align-self-start">
								<span class="icon-phone text-primary"></span>
							</div>
							<div class="text">
								<span class="h4 d-block">010-8923-1256</span> <span
									class="caption-text">발신자 부담</span>
							</div>
						</div>
					</div>

					<div class="col-lg-3 d-none d-lg-block">
						<div class="quick-contact-icons d-flex">
							<div class="icon align-self-start">
								<span class="icon-envelope text-primary"></span>
							</div>
							<div class="text">
								<span class="h4 d-block">soo125696@gmail.com</span> <span
									class="caption-text">이메일 주소</span>
							</div>
						</div>
					</div>

					<div class="col-6 d-block d-lg-none text-right">
						<a href="#"
							class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
							class="icon-menu h3"></span></a>
					</div>
				</div>
				
				<!-- 언어설정 start -->
					<!-- main페이지에만 뜨도록 설정 -->
				<!-- 언어설정 end -->
			</div>
			<!-- ▲ header end -->

			<!-- ▼ 상단 메뉴바 start -->
			<div
				class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block"
				role="banner">

				<div class="container">
					<div class="d-flex align-items-center">

						<div class="mx-auto">
							<nav class="site-navigation position-relative text-right"
								role="navigation">
								
								<!-- 상단 메뉴 목록 start -->
								<ul class="site-menu main-menu js-clone-nav mr-auto d-none pl-0 d-lg-block" id="main-menu">
									<li class="active"><a href="main.do" class="nav-link text-left">JinEdition</a></li>
									<!--  
									<li><a href="about.jsp" class="nav-link text-left"><spring:message code="message.main.aboutUs" /></a></li>
									-->
									<li><a href="main.do#rent" class="nav-link text-left">렌트서비스</a></li>
									<li><a href="contact.jsp" class="nav-link text-left">고객센터</a></li>
									<li><a href="savedList.do?memId=${mem.memId}" class="nav-link text-left">찜목록</a></li>

									<!-- 로그인 커스텀태그 start--> 
									<tag:login />
									<!-- 로그인 커스텀태그 end-->
									
									<!-- 내정보 커스텀태크 start -->
									<tag:mypage />
									<!-- 내정보 커스텀태그end -->
									
									<tag:yachtInsert />
										
								</ul>
								<!-- 상단 메뉴 목록 end -->
							</nav>

						</div>

					</div>
				</div>

			</div>
		</div>
		<!-- 버튼 클릭시 모달 창 띄우도록 js에서 구현 -->
	    <div id="my_modal">
			<div class="loadsection"></div>      
        </div>

	<!-- 외부 자바스크립트 -->
	<script src="js/modal.js"></script>
	

	
</body>
</html>