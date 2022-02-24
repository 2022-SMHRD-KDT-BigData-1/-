<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="description" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>P+(Programming에 Planner를 더하다.)</title>
<!-- Favicon  -->
<link rel="icon" href="image/p+만.png" />
<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css"/>
<link rel="stylesheet" href="style.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" />


<style>
body {
    background: #d1d5db
}
.height {
	height: 100vh
}

.form {
	position: relative
}

.form .fa-search {
	position: absolute;
	top: 20px;
	left: 20px;
	color: #9ca3af
}

.form span {
	position: absolute;
	right: 17px;
	top: 13px;
	padding: 2px;
	border-left: 1px solid #d1d5db
}

.left-pan {
	padding-left: 7px
}

.left-pan i {
	padding-left: 10px
}

.form-input {
	height: 55px;
	text-indent: 33px;
	border-radius: 10px
}

.form-input:focus {
	box-shadow: none;
	border: none
}
</style>



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
						<li><a class="dropdown-item" href="#">책 검색</a></li>
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


	<!-- ##### Main Content Wrapper Start ##### -->
	<div class="main-content-wrapper d-flex clearfix">
		<!-- Mobile Nav (max width 767px)-->
		<div class="mobile-nav">
			<!-- Navbar Brand -->
			<div class="amado-navbar-brand">
				<a href="index.html"><img src="img/core-img/logo.png" alt="" /></a>
			</div>
			<!-- Navbar Toggler -->
			<div class="amado-navbar-toggler">
				<span></span><span></span><span></span>
			</div>
		</div>



		<div class="shop_sidebar_area" style="bg-color:#f5f7fa">
			<!-- ##### Single Widget ##### -->
			<div class="widget catagory mb-50">
				<!-- Widget Title -->
				<h6 class="widget-title mb-30">컨텐츠 추천</h6>
				<hr>
				<!--  Catagories  -->
				<div class="catagories-menu">
					<ul>
						<li><a href="#">유형확인 및 재검사</a></li>
						<li><a href="#">책 검색</a></li>
					</ul>
				</div>
			</div>

		</div>

		<div class="container" style="bg-color:#fbb710">
			<div
				class="row height d-flex justify-content-center align-items-center">
				<div class="col-md-6">
					<div class="form">
						<i class="fa fa-search"></i> <input type="text"
							class="form-control form-input" placeholder="도서명을 입력하세요.">
						<div class="text-center"><span class="left-pan">
					<a href="#" class="btn" >검색</a>
				</span></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ##### Main Content Wrapper End ##### -->

	<!-- ##### Footer Area Start ##### -->


	<!-- Js Plugins -->
	<script src="캐러셀/js/jquery-3.3.1.min.js"></script>
	<script src="캐러셀/js/bootstrap.min.js"></script>
	<script src="캐러셀/js/jquery-ui.min.js"></script>
	<script src="캐러셀/js/jquery.slicknav.js"></script>
	<script src="캐러셀/js/mixitup.min.js"></script>
	<script src="캐러셀/js/owl.carousel.min.js"></script>
	<script src="캐러셀/js/main.js"></script>



	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
	</div>
</body>
</html>
