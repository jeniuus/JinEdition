<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>JinEdition | 회원탈퇴</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- 파비콘 -->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon2.ico">

  <link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Dancing+Script:400,700|Muli:300,400" rel="stylesheet">
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
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">

<style type="text/css">

/*input태그*/
.form-control {

	width: 600px;	
}

/*확인,취소 버튼*/
.buttons {
	display: flex;
	margin-top: 30px;
	margin-left: 15px;
}

/*확인버튼*/
.start-button {
	margin-right: 20px;
}	
</style>

</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

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

				<div class="row justify-content-center mb-5" style="margin-top: 66px;">
					<div class="col-md-7 text-center">
						<span class="text-serif text-primary">JinEdition</span>
						<h3 class="heading-92913 text-black text-center">회원 탈퇴</h3>
					</div>
				</div>
				
				<div class="row justify-content-center">
				<div class="mypage-box">
					<form class="" action="deleteMem.do?memId=${mem.memId}" method="post">
		
							<!-- 비밀번호 start -->
							<div class="col-12">
								<div class="form-group">
									<h4 class="small-title">비밀번호</h4>
									<input class="form-control check" name="memPw" id="password"
										type="password"
										placeholder="현재 비밀번호를 입력하세요">
								</div>
								<div id="pw1Error" class="error_next_box"></div>
							</div>
							<!-- 비밀번호 end -->					
							<!-- 비밀번호 확인 start -->
							<div class="col-12">
								<div class="form-group">
									<h4 class="small-title">현재 비밀번호 확인</h4>
									<input class="form-control check" name="memPw" id="password"
										type="password"
										placeholder="확인을 위해 비밀번호를 한 번 더 입력하세요">
								</div>
								<div id="pw2Error" class="error_next_box"></div>
							</div>
							<!-- 비밀번호 확인 end -->
							<div class="col-12">
								<p class="message">※사용하고 계신 아이디는 탈퇴할 경우 복구가 불가능합니다※</p>
							</div>

							
						<!-- 확인/취소 버튼 start-->
						<div class="buttons">
							<!-- 확인 버튼 start -->
							<div class="form-group mt-3 start-button">
								<button type="submit" class="btn btn-primary py-3 px-5">확인</button>
							</div>
							<!-- 확인 버튼 end -->

							<!-- 취소 버튼 start -->
							<div class="form-group mt-3">
								<!-- 향후 a href="main.do"로 수정 -->
								<a href="main.do">
								<button type="button" class="btn btn-primary py-3 px-5">취소</button>
								</a>
							</div>
							<!-- 취소 버튼 end -->
						</div>
						<!-- 확인/취소 버튼 end-->					
					</form>
				</div>
				</div>

        </div>
    </div>



    
    <div class="site-section bg-image overlay" style="background-image: url('images/hero_2.jpg');">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 text-center">
            <h2 class="text-white">Get In Touch With Us</h2>
            <p class="lead text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            <p class="mb-0"><a href="#" class="btn btn-warning py-3 px-5 text-white">Contact Us</a></p>
          </div>
        </div>
      </div>
    </div>

    
    <!-- footer-start -->
	<jsp:include page="common/footer.jsp" />
	<!-- footer-end -->
    

  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#ff5e15"/></svg></div>

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