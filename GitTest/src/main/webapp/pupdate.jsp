<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%

%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>P+(Programming에 Planner를 더하다.)</title>
<link rel="icon" href="image/p+만.png" />
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts1/iconic/css/material-design-iconic-font.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css1/util.css" />
<link rel="stylesheet" type="text/css" href="css1/main.css" />
<!--===============================================================================================-->

</head>
<body>

	<header
		class="navbar navbar-expand navbar-dark bg-dark bd-navbar fixed-top">
		<a class="navbar-brand" href="#">P+</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">사이트
						소개</a></li>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="컨텐츠추천.jsp">컨텐츠 추천</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">유형 확인 및 재검사</a></li>
					</ul>
				</div>
				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="학습플래너.jsp">학습플래너</a> <span
						class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li class="dropdown-header">스케줄</li>
						<hr>
						<li><a href="스케줄만_등록.jsp">등록</a></li>
						<li><a href="전체스케줄목록.jsp">전체 스케줄 목록</a></li>
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
						<br>
						<li class="divider"></li>
						<li class="dropdown-header">일정</li>
						<hr>
						<li><a href="일정등록4번.jsp">등록</a></li>
						<li><a href="#">전체 일정 목록</a></li>
						<li><a href="전체에디터목록.jsp">전체 에디터 목록</a></li>
						<li><a href="전체일기목록.jsp">전체 일기 목록</a></li>
					</ul>
				</div>

				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">포트폴리오</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="포폴등록할스케줄.jsp">등록</a></li>

						<li><a class="dropdown-item" href="포폴목록.jsp">목록</a></li>
					</ul>
				</div>

				<div class="dropdown nav-item active">
					<a class="nav-link dropdown-toggle" href="#">마이페이지</a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<li><a class="dropdown-item" href="#">회원정보 수정/탈퇴</a></li>
						<li><a class="dropdown-item" href="#">전체 학습상황 조회</a></li>
						<li><a class="dropdown-item" href="#">위시리스트</a></li>
					</ul>
				</div>
				<li class="nav-item active"><a class="nav-link" href="#">로그아웃</a>
				</li>
			</ul>
		</div>
	</header>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="PUpdate.do"
					method="post">
					<span class="login100-form-title p-b-26"> 회원정보 수정 </span> <span
						class="login100-form-title p-b-48"> <!-- <i class="zmdi zmdi-font"></i> -->
						P+
					</span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is: a@b.c">
						<input class="input100" type="text" name="id" id="input_id"
							placeholder="아이디를 입력하세요." /> <span class="focus-input100"
							data-placeholder=""></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
						</span> <input class="input100" id="input_pw" type="password"
							name="old_pw" /> <span class="focus-input100"
							data-placeholder="기존 비밀번호를 입력하세요."></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
						</span> <input class="input100" type="password" name="new_pw" /> <span
							class="focus-input100" data-placeholder="새로운 비밀번호를 입력하세요."></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is: a@b.c">
						<input class="input100" type="text" id="input_nick" name="nick" />
						<span class="focus-input100" data-placeholder="새로운 닉네임을 입력하세요."></span>
					</div>

					<div class="wrap-login100-form-btn">
						<div class="login100-form-bgbtn"></div>
						<!--  <input type="submit" class="login100-form-btn" value="회원가입"> -->

						<button type="submit" class="login100-form-btn"
							onclick="location.href='PJoinCon.do'">회원가입</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js1/main.js"></script>
	<script>
		$('#input_nick').keyup(function() {
			let membernick = $('#input_nick').val();
			$.ajax({
				url : "NickCheck.do",
				type : "post",
				data : {
					membernick : membernick
				},
				dataType : 'json',
				success : function(result) {
					if (result == 0) {
						$("#checkNick").html('사용불가');
						$("#checkNick").attr('color', 'red');
					} else {
						$("#checkNick").html('사용가능');
						$("#checkNick").attr('color', 'green');
					}
				},
				error : function() {
					alert("서버요청실패");
				}
			})
		})
	</script>
</body>
</html>
