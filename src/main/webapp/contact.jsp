<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>JinEdition | 고객센터</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 파비콘 -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.ico">


<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,400,700|Muli:300,400"
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

</style>


</head>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

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







		<div class="site-section">
			<div class="container">

				<div class="row justify-content-center mb-5"
					style="margin-top: 66px;">
					<div class="col-md-7 text-center">
						<span class="text-serif text-primary">JinEdition</span>
						<h3 class="heading-92913 text-black text-center">문의하기</h3>
					</div>
				</div>


				<form action="inquiry.do">
				
	               	   <input type="hidden" name="toEmail" value="soo980201@naver.com">
					
						<div class="col-md-6 form-group">
							<label for="fname">이메일</label>
							<input type="text" name="inqEmail" id="fname" class="form-control form-control-lg"
							placeholder="고객님의 구글 이메일 주소 입력하세요.">
						</div>

						<div class="col-md-6 form-group">
							<label for="eaddress">이름</label>
							<input type="text" name="inqName" id="eaddress" class="form-control form-control-lg"
							placeholder="고객님의 성함을 입력하세요.">
						</div>
						<div class="col-md-6 form-group">
							<label for="tel">연락처</label>
							<input type="text" name="inqPhone" id="tel" class="form-control form-control-lg"
							placeholder="고객님의 연락처 입력하세요.">
						</div>				
					
						<div class="col-md-6 form-group">
							<label for="fname">제목</label>
							<input type="text" name="inqTitle" id="fname" class="form-control form-control-lg" 
							placeholder="보낼 이메일의 제목을 입력하세요.">
						</div>
					
						<div class="col-md-12 form-group">
							<label for="message">문의 내용</label>
							<textarea name="inqMsg" id="message" cols="30" rows="10" class="form-control" 
							placeholder="보낼 이메일 내용을 입력하세요."></textarea>
						</div>	

						<div class="col-12">
							<input type="submit" value="제출" class="btn btn-primary rounded-0 px-3 px-5">
						</div>

				</form>
				
			</div>
		</div>

		

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