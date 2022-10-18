<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" tagdir="/WEB-INF/tags"%> 

<!DOCTYPE html>
<html lang="ko">

<head>
<title>JinEdition</title>
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

<!-- 외부스타일시트 : header.css -->
<link rel="stylesheet" href="css/header.css">


<!-- 내부 스타일시트 -->
<style type="text/css">

/*요트 위치 텍스트*/
.service-39381 h3 a {
   color: #808080;
   font-size: 15px;
}
/*요트위치 박스*/
.yacht-map {
   margin-top: 10px;
}

/*요트이름 텍스트*/
.yacht-name {
   color: black;
   font-weight: bolder;
}

/*빈 하트 아이콘*/
.heart {
   background-image: url(images/button-icon/heart-empty.png);
   background-size: cover;
   width: 20px;
   height: 20px;
   cursor: pointer;
   position: absolute;
   top: 10px;
   right: 27px;
}
/*꽉 찬 하트 아이콘*/
 .flipped {
   background-image: url(images/button-icon/heart-full.png);
   background-size: cover;
   width: 20px;
   height: 20px;
   cursor: pointer;
   position: absolute;
   top: 10px;
   right: 27px;
 }

/*요트[이름/가격/위치]*/
.p-4 {
   padding-top: 10px!important;
   padding-left: 10px!important;
   padding-right: 10px!important;
}

.bg-primary {
    background-color: #393939!important;
    color: ffffff!important;
}
/*검색바 전체*/
.search-bar{
	position: relative;
	left:756px;
	margin-bottom: 50px;
}
/**/
.search-border{
	border:white;
}

/*옵션 선택 박스*/
.select-box {
	font-size: 15px;
	width: 84px;
	height: 30px;
} 
/*검색어 작성 박스*/
.keyword-box{
	font-size: 15px;
	width: 205px;
	height: 30px;	
}
/*검색 버튼*/
.search-btn {
	font-size: 15px;
	width: 54px;
	height: 30px;
	/*background-color: #393939;
	/*color: #beab80;
	border: white;*/
}

/*조건에 따른 정렬*/
.sortC{
	margin-bottom: 50px;
	color: black;
	
}
.yname{
	color: #ae8831;
}
</style>


</head>

<body data-spy="scroll" data-target=".site-navbar-target"
   data-offset="300">

	<!--제이쿼리 적용 방식: CDN방식 -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous">
	</script>

	<!-- js -->
	<script type="text/javascript">
	// modal창
	$(function(){
		$(".loadsection").load("login_resist_form.jsp"); // <div class="loadsection"></div> 여기에 login_resist_form.jsp가 들어옴 	
	});
	
	//찜 기능
    $('document').ready(function(){
        var memId=$('#memId').val();     // ID가 memId인 요소(태그)의 값을 변수 memId에 저장
        var yachtPk=$('#yachtPk').val();
        
        console.log('동작시작');
        
          $.ajax({
          url: './checkSaved.do',
          type: 'get',
          data: 'memId='+memId+'&yachtPk='+yachtPk,
          success : function(data){
          console.log("찜 ajax : 1= ♥, 0= ♡ : " + data);
          
          if(data==1){
             //1: 찜 되어있는 경우 ♥
             $('.saved_off').hide();
             $('.saved_on').show();
          
          }else if(data==0){//0: 찜 안되어있는경우 ♡
             $('.saved_off').show();
             $('.saved_on').hide();
          }else{// 로그인 안되어있는 경우
             $('.saved_off').show();
             $('.saved_on').hide();
          }         
          
       },error:function(){
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
								<span class="h4 d-block"><spring:message code="message.main.location1" /></span> 
								<span class="caption-text"><spring:message code="message.main.location2" /></span>
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
									class="caption-text"><spring:message code="message.main.callCharges" /></span>
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
									class="caption-text"><spring:message code="message.main.email1" /></span>
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
				<div class="language-change">
					<a href="main.do?lang=ko" class="language-title"><img src="images/Kor.svg" class="nation2">한국어</a> | <a href="main.do?lang=en" class="language-title"><img src="images/Eng.png" class="nation"> English</a>
				</div>
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
									<li><a href="main.do#rent" class="nav-link text-left"><spring:message code="message.main.rent" /></a></li>
									<li><a href="contact.jsp" class="nav-link text-left"><spring:message code="message.main.service" /></a></li>
									
									
									<li><a href="savedList.do?memId=${mem.memId}" class="nav-link text-left"><spring:message code="message.main.saved" /></a></li>

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
      </header>

      <!-- ▲ header + 상단메뉴바 end-->
      

      <!-- 요트 목록 start -->
      <!-- index.jsp에서 main.do 액션을 통해 샘플데이터 받아와야함 -->

      <div class="site-section bg-light">
         <div class="container">
         
            <div class="row justify-content-center mb-5"
               style="margin-top: 66px;">
               <div class="col-md-7 text-center">
                  <span class="text-serif text-primary">JinEdition</span>
                  <h3 class="heading-92913 text-black text-center"><spring:message code="message.main.yachtList" /></h3>
               </div>
            </div>
            	

            	<!-- 조건에 따른 요트 정렬 start -->
            	<!-- 
            	<div class="sortC">
            		<a href="">높은 가격 순</a> | <a href="">낮은 가격 순</a> | <a href="">최신 제작 순</a>
            	</div>
            	-->
            	<!-- 조건에 따른 요트 정렬 end -->
            	
            	<!-- 검색 바 start-->
            	<div class="search-bar">
            		<form action="main.do" method="post">
						<table border="1" class="search-border">
							<tr>
								<td><select name="searchCondition" class="select-box">
									<c:forEach var="v" items="${conMap}">
										<option value="${v.value}">${v.key}</option>
									</c:forEach>
								</select> <input type="text" class="keyword-box" name="searchKeyword" placeholder="<spring:message code="message.main.searchPlaceholder" />"> 
								<input type="submit" value="<spring:message code="message.main.search" />" class="search-btn"></td>
							</tr>
						</table>
					</form>
            	</div>
            	<!-- 검색 바 end-->

            <div class="row">
            
<c:choose>

	<c:when test="${datas!=null}">
               <!-- 요트 반복 start (아직 페이징처리x) -->
               <c:forEach var="v" items="${datas}">
               <div class="col-md-6 col-lg-4 mb-4">
                  <div class="service-39381">								<!-- filename => yachtPic -->
                  	 <a href="yacht_detail.do?yachtPk=${v.yachtPk}"><img src="images/yacht/${v.yachtPic}" alt="Image" class="img-fluid">
                     </a>
                     <div class="p-4">
                        <div class="">
                           <div class="mr-auto yacht-name yname">${v.yachtName}</div>
                           <div class="ml-auto price">
                              <span class="bg-primary">₩ ${v.price}</span>
                           </div>
                        </div>
                        <h3 class="yacht-map">
                           <a href="yacht_detail.do?yachtPk=${v.yachtPk}">
                           <span class="icon-room mr-1 text-primary"></span>${v.location}  |  <spring:message code="message.main.ma" />: ${v.year}
                           </a>
                        </h3>
                     </div>

                  </div>
               </div>
               </c:forEach>           
               <!-- 요투 반복 end -->		
	</c:when>
	
	<c:otherwise>
			<div class="col-md-6 col-lg-4 mb-4">
			검색 결과가 없습니다.
			</div>
	</c:otherwise>

</c:choose>
            


            </div>
         </div>
      </div>

      <!-- 요트 목록 end -->


      <!--  
         <div class="intro-section"
            style="background-image: url('images/hero_2.jpg');">
            <div class="container">
               <div class="row align-items-center">
                  <div class="col-lg-7 mx-auto text-center" data-aos="fade-up">
                     <h1>JinEdition</h1>
                     <p>지금 당장 럭셔리 요트를 만나보실 수 있습니다.</p>
                     <p>
                        <a href="#" class="btn btn-primary py-3 px-5">Read More</a>
                     </p>
                  </div>
               </div>
            </div>
         </div>
         -->
   </div>


   <div class="site-section">
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <img src="images/hero_2.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="col-md-6">
               <span class="text-serif text-primary"><spring:message code="message.main.aboutUs" /></span>
               <h3 class="heading-92913 text-black"><spring:message code="message.main.welcome" /></h3>
               <p><spring:message code="message.main.welcomeMSG_1" /></p>
               <p><spring:message code="message.main.welcomeMSG_2" /></p>
               <p>
                  <a href="#" class="btn btn-primary py-3 px-4"><spring:message code="message.main.aboutusBtn" /></a>
               </p>
            </div>
         </div>
      </div>
   </div>
	<!--  
   <div class="py-5">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-lg-4">
               <div class="service-29283">
                  <span class="wrap-icon-39293"> <span class="flaticon-yacht"></span>
                  </span>
                  <h3>Luxuries Yacht</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                     Necessitatibus ipsa, ad ratione quos distinctio unde.</p>
               </div>
            </div>
            <div class="col-md-6 col-lg-4">
               <div class="service-29283">
                  <span class="wrap-icon-39293"> <span
                     class="flaticon-shield"></span>
                  </span>
                  <h3>30 Years of Experience</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                     Necessitatibus ipsa, ad ratione quos distinctio unde.</p>
               </div>
            </div>
            <div class="col-md-6 col-lg-4">
               <div class="service-29283">
                  <span class="wrap-icon-39293"> <span
                     class="flaticon-captain"></span>
                  </span>
                  <h3>Good Captain</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                     Necessitatibus ipsa, ad ratione quos distinctio unde.</p>
               </div>
            </div>
         </div>
      </div>
   </div>
	-->

   <div class="site-section bg-image overlay"
      style="background-image: url('images/hero_1.jpg');">
      <div class="container">
         <div class="row">
            <div class="col">
               <div class="counter-39392">
                  <h3>349</h3>
                  <span>Number of Yacht</span>
               </div>
            </div>
            <div class="col">
               <div class="counter-39392">
                  <h3>7000+</h3>
                  <span>Customers Satisfied</span>
               </div>
            </div>
            <div class="col">
               <div class="counter-39392">
                  <h3>120</h3>
                  <span>Number of Staffs</span>
               </div>
            </div>
            <div class="col">
               <div class="counter-39392">
                  <h3>493</h3>
                  <span>Sea Destinations</span>
               </div>
            </div>
            <div class="col">
               <div class="counter-39392">
                  <h3>230</h3>
                  <span>Professional Sailors</span>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- 렌트서비스 영역 start -->


   <div class="site-section" id="rent">
      <div class="container">
      
                  <div class="row justify-content-center mb-5"
               style="margin-top: 30px;">
               <div class="col-md-7 text-center">
                  <span class="text-serif text-primary">rent Now</span>
                  <h3 class="heading-92913 text-black text-center"><spring:message code="message.main.rentService" /></h3>
               </div>
            </div>
            
      	    <c:choose>
				<c:when test="${mem!=null}">
         <div class="row">
            <div class="col-md-7">
               <p>
                  <img src="images/hero_1.jpg" alt="Image" class="img-fluid">
               </p>
            </div>
            <div class="col-md-5">
            

               
               <form action="mailSending.do" class="row" me>
               
               	  <input type="hidden" name="to" value="soo980201@naver.com">
               	  <input type="hidden" name="memId" value="${mem.memId}">
               	
                  <div class="form-group col-md-6">
                     <label for="input-1"><spring:message code="message.main.name" />:</label> 
                     <input type="text" name="name" value="${mem.memName}" class="form-control" id="input-1">
                  </div>
                  
                  <div class="form-group col-md-6">
                     <label for="input-2"><spring:message code="message.main.Nop" />:</label> 
                     <input type="text" name="peopleNum" class="form-control" id="input-2">
                  </div>

                  <div class="form-group col-md-6">
                     <label for="input-3"><spring:message code="message.main.Pdate" />:</label> 
                     <input type="text" name="startDate" class="form-control datepicker" id="input-3">
                  </div>
                  
                  <div class="form-group col-md-6">
                     <label for="input-4"><spring:message code="message.main.Rdate" />:</label> 
                     <input type="text" name="endDate"  class="form-control datepicker" id="input-4">
                  </div>
                  
                  <div class="form-group col-md-6">
                     <label for="input-6"><spring:message code="message.main.email" />:</label>
                     <input type="text" name="from" value="${mem.memEmail}" class="form-control" id="input-6">
                  </div>

                  <div class="form-group col-md-6">
                     <label for="input-7"><spring:message code="message.main.Pnum" />:</label> 
                     <input type="text"  name="phoneNum" class="form-control" id="input-7">
                  </div>
                  
                  <div class="form-group col-md-12">
                     <label for="input-5">제목:</label> 
                     <input type="text"  name="title" class="form-control" id="input-7">
                  </div>   
                                 
                  <div class="form-group col-md-12">
                     <label for="input-8"><spring:message code="message.main.message" />:</label>
                     <textarea name="content" id="input-8" cols="30" rows="5" class="form-control"></textarea>
                  </div>

                  <div class="form-group col-md-12">
                     <input type="submit" class="btn btn-primary py-3 px-5" value="<spring:message code="message.main.submit" />">
                  </div>

               </form>
            </div>
         </div>				
				</c:when>
	
				<c:otherwise>
					<p style="text-align: center;">
					로그인 후 이용하실 수 있습니다.
					</p>
				</c:otherwise>	
			</c:choose>	
		
      </div>
   </div>
   <!-- 렌트서비스 영역 end -->

   <div class="site-section bg-image overlay"
      style="background-image: url('images/hero_2.jpg');">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-7 text-center">
               <h2 class="text-white">Get In Touch With Us</h2>
               <p class="lead text-white">Lorem ipsum dolor sit amet,
                  consectetur adipisicing elit.</p>
               <p class="mb-0">
                  <a href="#" class="btn btn-warning py-3 px-5 text-white">Contact
                     Us</a>
               </p>
            </div>
         </div>
      </div>
   </div>


   <!-- footer-start -->
   <jsp:include page="common/footer.jsp" />
   <!-- footer-end -->


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
   
   <script>
    // 빈 하트 click -> 꽉 찬 하트
    // 꽉 찬 하트 click -> 빈 하트
	let heart = document.getElementsByClassName('heart');

	for (var i = 0; i < heart.length; i++) {
		heart[i].addEventListener('click', function(e) {
			e.currentTarget.classList.toggle('flipped');
		});
	}
	</script>

	<!-- 외부 자바스크립트 -->
	<script src="js/modal.js"></script>

</body>

</html>
