<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>

<body>

	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<!-- Brand -->
		<a class="navbar-brand" href="#">HAMOYE</a>

		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#login">로그인</a>
				 
					<!-- 로그인 modal창 start -->
					<div class="modal" id="login">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">로그인</h4>
								</div>
								<!-- Modal body -->
								<form action="" class="was-validated">
									<div class="form-group">
										<label for="userId">아이디 </label> <input type="text"
											class="form-control" id="userId" placeholder="Enter ID"
											name="userId" required>
										<div class="valid-feedback">Valid.</div>
										<div class="invalid-feedback">Please fill out this
											field.</div>
									</div>
									<div class="form-group">
										<label for="userPw">비밀번호 </label> <input type="password"
											class="form-control" id="userPw" placeholder="Enter Password"
											name="userPw" required>
										<div class="valid-feedback">Valid.</div>
										<div class="invalid-feedback">Please fill out this
											field.</div>
									</div>
									<button type="submit" class="btn btn-primary"
										style="margin-left: 50%;">로그인</button>
									<button type="button" class="btn btn-secondary">회원가입</button>
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">취소</button>
								</form>

							</div>
						</div>
					</div> <!-- 로그인 modal창 end --></li>
				<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
			</ul>

		</div>
	</nav>

</body>
</html>