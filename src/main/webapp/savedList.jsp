<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <title>JinEdition | 찜목록</title>
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
						<h3 class="heading-92913 text-black text-center">찜 목록</h3>
					</div>
				</div>       
        	<!--  
        	<div>       		        			
        			<a href="deleteAllSaved.do"><button type="button">전체삭제</button></a>
        	</div>
        	-->
        	<div class="row">
        		
        		<c:if test="${empty savedPk_yacht}">
        			<c:out value="찜한 요트가 존재하지 않습니다."></c:out>
        		</c:if>
        		
               <!-- 찜한 요트 반복 start -->               
               <c:forEach var="sy" items="${savedPk_yacht}">
               <div class="col-md-6 col-lg-4 mb-4">
                  <div class="service-39381">								
                  	 <a href="yacht_detail.do?yachtPk=${sy.yachtPk}">
                  	 	<img src="images/yacht/${sy.yachtPic}" alt="Image" class="img-fluid">
                     </a>                    
                     <div class="p-4">
                        <div class="">
                           <div class="mr-auto yacht-name yname">${sy.yachtName}</div>
                           <div class="ml-auto price">
                              <span class="bg-primary">₩ ${sy.price}</span>
                           </div>
                        </div>
                        <h3 class="yacht-map">
                           <a href="yacht_detail.do?yachtPk=${sy.yachtPk}">
                           <span class="icon-room mr-1 text-primary"></span>${sy.location}
                           </a>
                        </h3>
                     </div>

                  </div>
               </div>
               </c:forEach>           
               <!-- 찜한 요트 반복 end -->    
                  
        	</div>
        


			<!--
            <div class="row text-center mt-5">
                <div class="col-12">
                    <a href="#" class="p-3 d-inline-block">1</a>
                    <a href="#" class="p-3 d-inline-block">2</a>
                    <span class="p-3 d-inline-block text-black">3</span>
                    <a href="#" class="p-3 d-inline-block">4</a>
                    <a href="#" class="p-3 d-inline-block">5</a>
                </div>
            </div>
           -->
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

</body>

</html>