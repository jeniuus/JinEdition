<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<title>JinEdition | 요트 상세정보</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 파비콘 -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.ico">

<link
	href="https://fonts.googleapis.com/css?family=Oswald:400,700|Dancing+Script:400,700|Muli:300,400"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/jquery.fancybox.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">

<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/aos.css">
<link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet"
	type="text/css">

<link rel="stylesheet" href="css/style.css">

<style type="text/css">
img {
	display: block;
	max-width: 100%;
	height: auto;
	margin-left: auto;
	margin-right: auto;
}

.yacht-img {
	width: 700px;
	height: 400px;
}

.yacht-title {
	text-align: center;
	word-break: break-word;
	margin-top: 32px;
	margin-bottom: 11px;
}

.title-text {
	border-bottom: 0;
	color: #393939;
	line-height: 1.1;
	font-size: 20px;
	font-weight: 500;
	margin-bottom: 15px;
	margin-top: 22px;
	padding-bottom: 5px;
}

.price-container-box {
	padding-bottom: 15px;
	border-radius: 10px;
	background-color: #fff;
}

.price {
	padding-top: 0px;
	padding-bottom: 15px;
	color: #727272;
	text-align: center;
	font-size: 2.5em;
	line-height: 1em;
}

.details-li {
	list-style-type: none;
	/*background-color: rgb(236, 236, 236);*/
	color: rgb(50, 50, 50);
	font-size: 14px;
	padding: 10px 0px;
	margin-bottom: 25px;
}

.list-name {
	font-weight: 500;
	float: left;
	width: 50%;
	min-height: 1px;
	padding-right: 10px;
	padding-left: 10px;
	font-size: 17px;
}

.list-value {
	font-weight: 400;
	float: left;
	width: 50%;
	min-height: 1px;
	padding-right: 10px;
	padding-left: 10px;
	font-size: 17px;
}

.pt-5 {
	margin-top: 150px;
}

.saved_btn {
	position: relative;
	bottom: 387px;
	left: 300px;
}

.saved_on .saved-off {
	
}

.seller-pic {
	width: 114px;
	height: 149px;
}

#show-phone, #show-email{
	width: 230px;
	height: 31px;
	text-transform: none;
	text-align: center;	
	letter-spacing:normal;
	font-size: 16px;
}
#show-phone{
	margin-bottom: 10px;
}


</style>


</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<!--제이쿼리 적용 방식: CDN방식 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>

	<script>
		// 스크립트는 보여지는 이미지만 ♡ -> ♥ (혹은 반대로)로 바꿔주는거고
		// DB에서 찜추가, 찜삭제는 로직으로 한거라서 필요
	
		// 클릭이벤트 대신, a태그를 이용하여 href
		
		//페이지에 들어왔을때 DB를 확인 -> 찜O ->♥   , 찜x ->♡
		$('document').ready(function() {
			var memId = $('#memId').val(); //회원아이디(pk)
			var yachtPk = $('#yachtPk').val(); // 요트pk
			console.log('memId= ' + memId);
			console.log('yachtPk= ' + yachtPk);
			console.log('동작시작');

			$.ajax({
				url : './checkSaved.do', //데이터를 보낼 곳 url
				type : 'get', //
				data : 'memId=' + memId + '&yachtPk=' + yachtPk,
				success : function(data) {
					//console.log("찜 ajax : 1= ♥, 0= ♡ : " + data);

					if (data == 1) { //1: 찜 된 상태 ♥
						$('.saved_off').hide(); // ♡ 숨김
						$('.saved_on').show();  // ♥ 표시!

					} else if (data == 0) {//0: 찜 되지 않은 상태 ♡
						$('.saved_off').show(); // ♡ 표시!
						$('.saved_on').hide();

					} else {// 로그인 안되어있는 경우
						$('.saved_off').show(); // ♡ 표시!
						$('.saved_on').hide();
					}
				},
				error : function() {
					console.log("찜 ajax :실패")
					$('.saved_off').show();
					$('.saved_on').hide();
				}
			});
		});
				
	</script>

	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>



		<!-- ▼ header + 상단메뉴바 start-->

		<header id="headers">
			<jsp:include page="common/header.jsp" />
		</header>

		<!-- ▲ header + 상단메뉴바 end-->



		<section class="site-section">
			<div class="container">

				<!-- title start -->
				<div class="row justify-content-center mb-5"
					style="margin-top: 66px;">
					<div class="col-md-7 text-center">
						<span class="text-serif text-primary">JinEdition</span>
						<h3 class="heading-92913 text-black text-center">요트 상세정보</h3>
					</div>
				</div>
				<!-- title end -->

				<div class="row">

					<!-- 본문 start -->
					<div class="col-md-8 blog-content">
						<div>
							<div>
								<h1 class="yacht-title">${data.yachtName}</h1>
								<img alt="" src="images/yacht/${data.yachtPic}"
									class="yacht-img">
							</div>

							<!-- 찜 버튼 start -->
							<div class="saved-btn">
							    <!-- <a></a>태그를 사용하여 클릭 시 페이지 이동 가능 -->
								<a class="saved_btn" href="insertSaved.do?memId=${mem.memId}&yachtPk=${data.yachtPk}">
									<!-- 현재 회원의 id와 해당 요트의 pk가 각각 일치하면, 찜추가 요청 --> 
									<img class="saved_off" style="height: 54px;" src="images/empty-heart.png"> 
									<img class="saved_on" style="height: 54px;" src="images/full-heart.png"> 
									<input type="hidden" value="${mem.memId}" id="memId">
									<input type="hidden" value="${data.yachtPk}" id="yachtPk">
								</a>
							</div>
							<!-- 찜 버튼 end -->

							<div class="yacht-details-wrap">
								<p class="title-text">가격</p>
								<div class="yacht-details">
									<div class="price-container-box">
										<div class="price">₩${data.price}</div>
									</div>
									<p class="title-text">상세 정보</p>
									<ul class="details-ul">
										<li class="details-li"><span class="list-name">제작연도:</span>
											<span class="list-value">${data.year}</span></li>
										<li class="details-li"><span class="list-name">위치:</span>
											<span class="list-value">${data.location}</span></li>
										<li class="details-li"><span class="list-name">길이:</span>
											<span class="list-value">${data.length}</span></li>
										<li class="details-li"><span class="list-name">너비:</span>
											<span class="list-value">${data.beam}</span></li>
										<li class="details-li"><span class="list-name">드래프트:</span>
											<span class="list-value">${data.draft}</span></li>
										<li class="details-li"><span class="list-name">선실:</span>
											<span class="list-value">${data.berths}</span></li>
										<li class="details-li"><span class="list-name">객실:</span>
											<span class="list-value">${data.cabins}</span></li>
										<li class="details-li"><span class="list-name">타입:</span>
											<span class="list-value">${data.boatType}</span></li>
									</ul>

								</div>
							</div>
						</div>
					
						<div>
						<c:choose>
							<c:when test="${mem.memDistin eq 1}">
								<a href="deleteYacht.do?yachtPk=${data.yachtPk}" class="btn btn-primary btn-sm px-5 rounded-0">해당 요트 삭제</a>
							</c:when>
						</c:choose>
						</div>
						
						<div class="pt-5">
						 
							
	
						</div>
						

					</div>
					<!-- 본문 end -->

					<!-- 우측 사이드바 start -->
					<div class="col-md-4 sidebar" style="margin-top: 66px;">
						<!-- 
						<div class="sidebar-box">
							<form action="#" class="search-form">
								<div class="form-group">
									<span class="icon fa fa-search"></span> <input type="text"
										class="form-control"
										placeholder="Type a keyword and hit enter">
								</div>
							</form>
						</div>
						 -->
						<div class="sidebar-box">
							<img
								src="https://static-x.jamesedition.com/assets/icons/image_placeholder-8cccf7a79b5b7339fa1bfeef60745d50ed787dfd30759f7531587fea129ed7c9.png"
								alt="Image placeholder" class="img-fluid mb-4 seller-pic" style="margin: 0 0 0 0px;">
							<h3 class="text-black">이름: Bruce Wayne</h3>
							<p>
								대리인 위치:<br>3636 E Coast Highway 92625<br>Corona del Mar<br>(United
								States)<br>
								<br>가입 일자: since 2020 
							</p>
							
								<div id="show-phone" class="btn btn-primary btn-sm px-5 rounded-0">010-1234-5678</div>
								<div id="show-email" class="btn btn-primary btn-sm px-5 rounded-0">soo125696@gmail.com</div>
							
						</div>

						<!--  
						<div class="sidebar-box">
							<h3 class="text-black">Paragraph</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Ducimus itaque, autem necessitatibus voluptate quod mollitia
								delectus aut, sunt placeat nam vero culpa sapiente consectetur
								similique, inventore eos fugit cupiditate numquam!</p>
						</div>
						-->
					</div>
					<!-- 우측 사이드바 end -->
				</div>
			</div>
		</section>


		<!-- footer-start -->
		<jsp:include page="common/footer.jsp" />
		<!-- footer-end -->


	</div>
	<!-- .site-wrap -->


	<!-- loader -->
	<div id="loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15" /></svg>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.countdown.min.js"></script>
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.mb.YTPlayer.min.js"></script>




	<script src="js/main.js"></script>

</body>

</html>
