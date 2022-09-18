<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>로그인 / 회원가입 폼</title>

<!-- 외부 스타일 시트 이용 -->
<link rel="stylesheet" href="css/login_resist_form.css">

<style type="text/css">
button {
	font-size: 13.3333px !important;
}
/* 버튼 클릭시 효과(_reboots.scss파일 328~331라인)*/
button:focus {
    outline: 0;
    outline: 0;
}
</style>

</head>

<body>

	<div class="wrap">
		<div class="form-wrap">
		
			<div class="button-wrap">
				<div id="btn2"></div>
				<button type="button" class="togglebtn" onclick="login()">로그인</button>
				<button type="button" class="togglebtn" onclick="register()">회원가입</button>
			</div>
			<!-- 
			<div class="social-icons">
				<img src="img/fb.png" alt="facebook"> <img src="img/tw.png"
					alt="twitter"> <img src="img/gl.png" alt="google">
			</div>
			 -->
			<!-- 로그인 폼 -->
			<form id="login" action="login.do" method="post" class="input-group2">
				<input type="text" class="input-field2" name="memId" placeholder="아이디" required>
				<input type="password" class="input-field2" name="memPw" placeholder="비밀번호" required> 
				<!--  
				<input type="checkbox" class="checkbox"><span>아이디 저장</span>
				-->
				<button class="submit">로그인</button>
			</form>
			
			<!-- 회원가입 폼 -->
			<form id="register" action="insertMem.do" method="post" class="input-group2">
			
				<input type="text" class="input-field2 check" name="memId" placeholder="아이디" required>
				<div id="idError" class="error_next_box"></div>
				
				<input type="password" class="input-field2 check" name="memPw" placeholder="비밀번호" required>
				<div id="pw1Error" class="error_next_box"></div>
				
				<!--  
				<input type="password" class="input-field check2" name="memPw2" placeholder="비밀번호 확인" required>
				<div id="pw2Error" class="error_next_box"></div>
				-->
				<input type="text" class="input-field2 check" name="memName" placeholder="이름" required>
				<div id="nameError" class="error_next_box"></div>
				
				<input type="email" class="input-field2 check" name="memEmail" placeholder="이메일" required>
				<div id="emailError" class="error_next_box"></div>
				<!--
				<input type="checkbox" class="checkbox"><span>회원가입 진행</span>
				-->
				<button class="submit">회원가입</button>
			</form>

		<a class="modal_close_btn">x</a>
		</div>
	</div>

	<script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn2");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
        
    <!-- 외부 자바스크립트 -->
	<script src="js/modal.js"></script>
	<!-- 
	<script src="js/register.js"></script>
	-->
</body>

</html>